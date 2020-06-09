package com.ruoyi.web.controller.kmps;

import java.util.List;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.kmps.domain.MebFinancelrd;
import com.ruoyi.kmps.service.IMebFinancelrdService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 资金明细Controller
 * 
 * @author ruoyi
 * @date 2020-06-06
 */
@Controller
@RequestMapping("/kmps/financelrd")
public class MebFinancelrdController extends BaseController
{
    private String prefix = "kmps/financelrd";

    @Autowired
    private IMebFinancelrdService mebFinancelrdService;

    @RequiresPermissions("kmps:financelrd:view")
    @GetMapping()
    public String financelrd()
    {
        return prefix + "/financelrd";
    }

    /**
     * 查询资金明细列表
     */
    @RequiresPermissions("kmps:financelrd:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(MebFinancelrd mebFinancelrd)
    {
        startPage();
        List<MebFinancelrd> list = mebFinancelrdService.selectMebFinancelrdList(mebFinancelrd);
        return getDataTable(list);
    }

    /**
     * 导出资金明细列表
     */
    @RequiresPermissions("kmps:financelrd:export")
    @Log(title = "资金明细", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(MebFinancelrd mebFinancelrd)
    {
        List<MebFinancelrd> list = mebFinancelrdService.selectMebFinancelrdList(mebFinancelrd);
        ExcelUtil<MebFinancelrd> util = new ExcelUtil<MebFinancelrd>(MebFinancelrd.class);
        return util.exportExcel(list, "financelrd");
    }

    /**
     * 新增资金明细
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存资金明细
     */
    @RequiresPermissions("kmps:financelrd:add")
    @Log(title = "资金明细", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(MebFinancelrd mebFinancelrd)
    {
        return toAjax(mebFinancelrdService.insertMebFinancelrd(mebFinancelrd));
    }

    /**
     * 修改资金明细
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        MebFinancelrd mebFinancelrd = mebFinancelrdService.selectMebFinancelrdById(id);
        mmap.put("mebFinancelrd", mebFinancelrd);
        return prefix + "/edit";
    }

    /**
     * 修改保存资金明细
     */
    @RequiresPermissions("kmps:financelrd:edit")
    @Log(title = "资金明细", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(MebFinancelrd mebFinancelrd)
    {
        return toAjax(mebFinancelrdService.updateMebFinancelrd(mebFinancelrd));
    }

    /**
     * 删除资金明细
     */
    @RequiresPermissions("kmps:financelrd:remove")
    @Log(title = "资金明细", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(mebFinancelrdService.deleteMebFinancelrdByIds(ids));
    }
}
