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
import com.ruoyi.kmps.domain.MebAuthname;
import com.ruoyi.kmps.service.IMebAuthnameService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 会员实名认证记录Controller
 * 
 * @author ruoyi
 * @date 2020-06-10
 */
@Controller
@RequestMapping("/kmps/authname")
public class MebAuthnameController extends BaseController
{
    private String prefix = "kmps/authname";

    @Autowired
    private IMebAuthnameService mebAuthnameService;

    @RequiresPermissions("kmps:authname:view")
    @GetMapping()
    public String authname()
    {
        return prefix + "/authname";
    }

    /**
     * 查询会员实名认证记录列表
     */
    @RequiresPermissions("kmps:authname:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(MebAuthname mebAuthname)
    {
        startPage();
        List<MebAuthname> list = mebAuthnameService.selectMebAuthnameList(mebAuthname);
        return getDataTable(list);
    }

    /**
     * 导出会员实名认证记录列表
     */
    @RequiresPermissions("kmps:authname:export")
    @Log(title = "会员实名认证记录", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(MebAuthname mebAuthname)
    {
        List<MebAuthname> list = mebAuthnameService.selectMebAuthnameList(mebAuthname);
        ExcelUtil<MebAuthname> util = new ExcelUtil<MebAuthname>(MebAuthname.class);
        return util.exportExcel(list, "authname");
    }

    /**
     * 新增会员实名认证记录
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存会员实名认证记录
     */
    @RequiresPermissions("kmps:authname:add")
    @Log(title = "会员实名认证记录", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(MebAuthname mebAuthname)
    {
        return toAjax(mebAuthnameService.insertMebAuthname(mebAuthname));
    }

    /**
     * 修改会员实名认证记录
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        MebAuthname mebAuthname = mebAuthnameService.selectMebAuthnameById(id);
        mmap.put("mebAuthname", mebAuthname);
        return prefix + "/edit";
    }

    /**
     * 修改保存会员实名认证记录
     */
    @RequiresPermissions("kmps:authname:edit")
    @Log(title = "会员实名认证记录", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(MebAuthname mebAuthname)
    {
        return toAjax(mebAuthnameService.updateMebAuthname(mebAuthname));
    }

    /**
     * 删除会员实名认证记录
     */
    @RequiresPermissions("kmps:authname:remove")
    @Log(title = "会员实名认证记录", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(mebAuthnameService.deleteMebAuthnameByIds(ids));
    }
}
