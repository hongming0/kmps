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
import com.ruoyi.kmps.domain.MebSiginIn;
import com.ruoyi.kmps.service.IMebSiginInService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 会员打卡Controller
 * 
 * @author ruoyi
 * @date 2020-06-10
 */
@Controller
@RequestMapping("/kmps/in")
public class MebSiginInController extends BaseController
{
    private String prefix = "kmps/in";

    @Autowired
    private IMebSiginInService mebSiginInService;

    @RequiresPermissions("kmps:in:view")
    @GetMapping()
    public String in()
    {
        return prefix + "/in";
    }

    /**
     * 查询会员打卡列表
     */
    @RequiresPermissions("kmps:in:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(MebSiginIn mebSiginIn)
    {
        startPage();
        List<MebSiginIn> list = mebSiginInService.selectMebSiginInList(mebSiginIn);
        return getDataTable(list);
    }

    /**
     * 导出会员打卡列表
     */
    @RequiresPermissions("kmps:in:export")
    @Log(title = "会员打卡", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(MebSiginIn mebSiginIn)
    {
        List<MebSiginIn> list = mebSiginInService.selectMebSiginInList(mebSiginIn);
        ExcelUtil<MebSiginIn> util = new ExcelUtil<MebSiginIn>(MebSiginIn.class);
        return util.exportExcel(list, "in");
    }

    /**
     * 新增会员打卡
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存会员打卡
     */
    @RequiresPermissions("kmps:in:add")
    @Log(title = "会员打卡", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(MebSiginIn mebSiginIn)
    {
        return toAjax(mebSiginInService.insertMebSiginIn(mebSiginIn));
    }

    /**
     * 修改会员打卡
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        MebSiginIn mebSiginIn = mebSiginInService.selectMebSiginInById(id);
        mmap.put("mebSiginIn", mebSiginIn);
        return prefix + "/edit";
    }

    /**
     * 修改保存会员打卡
     */
    @RequiresPermissions("kmps:in:edit")
    @Log(title = "会员打卡", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(MebSiginIn mebSiginIn)
    {
        return toAjax(mebSiginInService.updateMebSiginIn(mebSiginIn));
    }

    /**
     * 删除会员打卡
     */
    @RequiresPermissions("kmps:in:remove")
    @Log(title = "会员打卡", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(mebSiginInService.deleteMebSiginInByIds(ids));
    }
}
