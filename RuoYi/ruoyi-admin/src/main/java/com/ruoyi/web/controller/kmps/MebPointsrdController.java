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
import com.ruoyi.kmps.domain.MebPointsrd;
import com.ruoyi.kmps.service.IMebPointsrdService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 积分明细Controller
 * 
 * @author ruoyi
 * @date 2020-06-06
 */
@Controller
@RequestMapping("/kmps/pointsrd")
public class MebPointsrdController extends BaseController
{
    private String prefix = "kmps/pointsrd";

    @Autowired
    private IMebPointsrdService mebPointsrdService;

    @RequiresPermissions("kmps:pointsrd:view")
    @GetMapping()
    public String pointsrd()
    {
        return prefix + "/pointsrd";
    }

    /**
     * 查询积分明细列表
     */
    @RequiresPermissions("kmps:pointsrd:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(MebPointsrd mebPointsrd)
    {
        startPage();
        List<MebPointsrd> list = mebPointsrdService.selectMebPointsrdList(mebPointsrd);
        return getDataTable(list);
    }

    /**
     * 导出积分明细列表
     */
    @RequiresPermissions("kmps:pointsrd:export")
    @Log(title = "积分明细", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(MebPointsrd mebPointsrd)
    {
        List<MebPointsrd> list = mebPointsrdService.selectMebPointsrdList(mebPointsrd);
        ExcelUtil<MebPointsrd> util = new ExcelUtil<MebPointsrd>(MebPointsrd.class);
        return util.exportExcel(list, "pointsrd");
    }

    /**
     * 新增积分明细
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存积分明细
     */
    @RequiresPermissions("kmps:pointsrd:add")
    @Log(title = "积分明细", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(MebPointsrd mebPointsrd)
    {
        return toAjax(mebPointsrdService.insertMebPointsrd(mebPointsrd));
    }

    /**
     * 修改积分明细
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        MebPointsrd mebPointsrd = mebPointsrdService.selectMebPointsrdById(id);
        mmap.put("mebPointsrd", mebPointsrd);
        return prefix + "/edit";
    }

    /**
     * 修改保存积分明细
     */
    @RequiresPermissions("kmps:pointsrd:edit")
    @Log(title = "积分明细", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(MebPointsrd mebPointsrd)
    {
        return toAjax(mebPointsrdService.updateMebPointsrd(mebPointsrd));
    }

    /**
     * 删除积分明细
     */
    @RequiresPermissions("kmps:pointsrd:remove")
    @Log(title = "积分明细", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(mebPointsrdService.deleteMebPointsrdByIds(ids));
    }
}
