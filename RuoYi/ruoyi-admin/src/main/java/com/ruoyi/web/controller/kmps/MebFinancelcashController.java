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
import com.ruoyi.kmps.domain.MebFinancelcash;
import com.ruoyi.kmps.service.IMebFinancelcashService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 提现Controller
 * 
 * @author ruoyi
 * @date 2020-06-06
 */
@Controller
@RequestMapping("/kmps/financelcash")
public class MebFinancelcashController extends BaseController
{
    private String prefix = "kmps/financelcash";

    @Autowired
    private IMebFinancelcashService mebFinancelcashService;

    @RequiresPermissions("kmps:financelcash:view")
    @GetMapping()
    public String financelcash()
    {
        return prefix + "/financelcash";
    }

    /**
     * 查询提现列表
     */
    @RequiresPermissions("kmps:financelcash:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(MebFinancelcash mebFinancelcash)
    {
        startPage();
        List<MebFinancelcash> list = mebFinancelcashService.selectMebFinancelcashList(mebFinancelcash);
        return getDataTable(list);
    }

    /**
     * 导出提现列表
     */
    @RequiresPermissions("kmps:financelcash:export")
    @Log(title = "提现", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(MebFinancelcash mebFinancelcash)
    {
        List<MebFinancelcash> list = mebFinancelcashService.selectMebFinancelcashList(mebFinancelcash);
        ExcelUtil<MebFinancelcash> util = new ExcelUtil<MebFinancelcash>(MebFinancelcash.class);
        return util.exportExcel(list, "financelcash");
    }

    /**
     * 新增提现
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存提现
     */
    @RequiresPermissions("kmps:financelcash:add")
    @Log(title = "提现", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(MebFinancelcash mebFinancelcash)
    {
        return toAjax(mebFinancelcashService.insertMebFinancelcash(mebFinancelcash));
    }

    /**
     * 修改提现
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        MebFinancelcash mebFinancelcash = mebFinancelcashService.selectMebFinancelcashById(id);
        mmap.put("mebFinancelcash", mebFinancelcash);
        return prefix + "/edit";
    }

    /**
     * 修改保存提现
     */
    @RequiresPermissions("kmps:financelcash:edit")
    @Log(title = "提现", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(MebFinancelcash mebFinancelcash)
    {
        return toAjax(mebFinancelcashService.updateMebFinancelcash(mebFinancelcash));
    }

    /**
     * 删除提现
     */
    @RequiresPermissions("kmps:financelcash:remove")
    @Log(title = "提现", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(mebFinancelcashService.deleteMebFinancelcashByIds(ids));
    }
}
