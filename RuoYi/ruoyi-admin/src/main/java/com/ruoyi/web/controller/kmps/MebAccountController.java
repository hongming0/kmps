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
import com.ruoyi.kmps.domain.MebAccount;
import com.ruoyi.kmps.service.IMebAccountService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 会员账号Controller
 * 
 * @author ruoyi
 * @date 2020-06-06
 */
@Controller
@RequestMapping("/kmps/account")
public class MebAccountController extends BaseController
{
    private String prefix = "kmps/account";

    @Autowired
    private IMebAccountService mebAccountService;

    @RequiresPermissions("kmps:account:view")
    @GetMapping()
    public String account()
    {
        return prefix + "/account";
    }

    /**
     * 查询会员账号列表
     */
    @RequiresPermissions("kmps:account:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(MebAccount mebAccount)
    {
        startPage();
        List<MebAccount> list = mebAccountService.selectMebAccountList(mebAccount);
        return getDataTable(list);
    }

    /**
     * 导出会员账号列表
     */
    @RequiresPermissions("kmps:account:export")
    @Log(title = "会员账号", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(MebAccount mebAccount)
    {
        List<MebAccount> list = mebAccountService.selectMebAccountList(mebAccount);
        ExcelUtil<MebAccount> util = new ExcelUtil<MebAccount>(MebAccount.class);
        return util.exportExcel(list, "account");
    }

    /**
     * 新增会员账号
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存会员账号
     */
    @RequiresPermissions("kmps:account:add")
    @Log(title = "会员账号", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(MebAccount mebAccount)
    {
        return toAjax(mebAccountService.insertMebAccount(mebAccount));
    }

    /**
     * 修改会员账号
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        MebAccount mebAccount = mebAccountService.selectMebAccountById(id);
        mmap.put("mebAccount", mebAccount);
        return prefix + "/edit";
    }

    /**
     * 修改保存会员账号
     */
    @RequiresPermissions("kmps:account:edit")
    @Log(title = "会员账号", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(MebAccount mebAccount)
    {
        return toAjax(mebAccountService.updateMebAccount(mebAccount));
    }

    /**
     * 删除会员账号
     */
    @RequiresPermissions("kmps:account:remove")
    @Log(title = "会员账号", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(mebAccountService.deleteMebAccountByIds(ids));
    }
}
