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
import com.ruoyi.kmps.domain.MebVacation;
import com.ruoyi.kmps.service.IMebVacationService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 【请填写功能名称】Controller
 * 
 * @author ruoyi
 * @date 2020-06-06
 */
@Controller
@RequestMapping("/kmps/vacation")
public class MebVacationController extends BaseController
{
    private String prefix = "kmps/vacation";

    @Autowired
    private IMebVacationService mebVacationService;

    @RequiresPermissions("kmps:vacation:view")
    @GetMapping()
    public String vacation()
    {
        return prefix + "/vacation";
    }

    /**
     * 查询【请填写功能名称】列表
     */
    @RequiresPermissions("kmps:vacation:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(MebVacation mebVacation)
    {
        startPage();
        List<MebVacation> list = mebVacationService.selectMebVacationList(mebVacation);
        return getDataTable(list);
    }

    /**
     * 导出【请填写功能名称】列表
     */
    @RequiresPermissions("kmps:vacation:export")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(MebVacation mebVacation)
    {
        List<MebVacation> list = mebVacationService.selectMebVacationList(mebVacation);
        ExcelUtil<MebVacation> util = new ExcelUtil<MebVacation>(MebVacation.class);
        return util.exportExcel(list, "vacation");
    }

    /**
     * 新增【请填写功能名称】
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存【请填写功能名称】
     */
    @RequiresPermissions("kmps:vacation:add")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(MebVacation mebVacation)
    {
        return toAjax(mebVacationService.insertMebVacation(mebVacation));
    }

    /**
     * 修改【请填写功能名称】
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        MebVacation mebVacation = mebVacationService.selectMebVacationById(id);
        mmap.put("mebVacation", mebVacation);
        return prefix + "/edit";
    }

    /**
     * 修改保存【请填写功能名称】
     */
    @RequiresPermissions("kmps:vacation:edit")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(MebVacation mebVacation)
    {
        return toAjax(mebVacationService.updateMebVacation(mebVacation));
    }

    /**
     * 删除【请填写功能名称】
     */
    @RequiresPermissions("kmps:vacation:remove")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(mebVacationService.deleteMebVacationByIds(ids));
    }
}
