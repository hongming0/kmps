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
import com.ruoyi.kmps.domain.MebPhonerd;
import com.ruoyi.kmps.service.IMebPhonerdService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 手机号变更记录Controller
 * 
 * @author ruoyi
 * @date 2020-06-06
 */
@Controller
@RequestMapping("/kmps/phonerd")
public class MebPhonerdController extends BaseController
{
    private String prefix = "kmps/phonerd";

    @Autowired
    private IMebPhonerdService mebPhonerdService;

    @RequiresPermissions("kmps:phonerd:view")
    @GetMapping()
    public String phonerd()
    {
        return prefix + "/phonerd";
    }

    /**
     * 查询手机号变更记录列表
     */
    @RequiresPermissions("kmps:phonerd:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(MebPhonerd mebPhonerd)
    {
        startPage();
        List<MebPhonerd> list = mebPhonerdService.selectMebPhonerdList(mebPhonerd);
        return getDataTable(list);
    }

    /**
     * 导出手机号变更记录列表
     */
    @RequiresPermissions("kmps:phonerd:export")
    @Log(title = "手机号变更记录", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(MebPhonerd mebPhonerd)
    {
        List<MebPhonerd> list = mebPhonerdService.selectMebPhonerdList(mebPhonerd);
        ExcelUtil<MebPhonerd> util = new ExcelUtil<MebPhonerd>(MebPhonerd.class);
        return util.exportExcel(list, "phonerd");
    }

    /**
     * 新增手机号变更记录
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存手机号变更记录
     */
    @RequiresPermissions("kmps:phonerd:add")
    @Log(title = "手机号变更记录", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(MebPhonerd mebPhonerd)
    {
        return toAjax(mebPhonerdService.insertMebPhonerd(mebPhonerd));
    }

    /**
     * 修改手机号变更记录
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        MebPhonerd mebPhonerd = mebPhonerdService.selectMebPhonerdById(id);
        mmap.put("mebPhonerd", mebPhonerd);
        return prefix + "/edit";
    }

    /**
     * 修改保存手机号变更记录
     */
    @RequiresPermissions("kmps:phonerd:edit")
    @Log(title = "手机号变更记录", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(MebPhonerd mebPhonerd)
    {
        return toAjax(mebPhonerdService.updateMebPhonerd(mebPhonerd));
    }

    /**
     * 删除手机号变更记录
     */
    @RequiresPermissions("kmps:phonerd:remove")
    @Log(title = "手机号变更记录", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(mebPhonerdService.deleteMebPhonerdByIds(ids));
    }
}
