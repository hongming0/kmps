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
import com.ruoyi.kmps.domain.MebInfo;
import com.ruoyi.kmps.service.IMebInfoService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 会员详细信息Controller
 * 
 * @author ruoyi
 * @date 2020-06-06
 */
@Controller
@RequestMapping("/kmps/info")
public class MebInfoController extends BaseController
{
    private String prefix = "kmps/info";

    @Autowired
    private IMebInfoService mebInfoService;

    @RequiresPermissions("kmps:info:view")
    @GetMapping()
    public String info()
    {
        return prefix + "/info";
    }

    /**
     * 查询会员详细信息列表
     */
    @RequiresPermissions("kmps:info:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(MebInfo mebInfo)
    {
        startPage();
        List<MebInfo> list = mebInfoService.selectMebInfoList(mebInfo);
        return getDataTable(list);
    }

    /**
     * 导出会员详细信息列表
     */
    @RequiresPermissions("kmps:info:export")
    @Log(title = "会员详细信息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(MebInfo mebInfo)
    {
        List<MebInfo> list = mebInfoService.selectMebInfoList(mebInfo);
        ExcelUtil<MebInfo> util = new ExcelUtil<MebInfo>(MebInfo.class);
        return util.exportExcel(list, "info");
    }

    /**
     * 新增会员详细信息
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存会员详细信息
     */
    @RequiresPermissions("kmps:info:add")
    @Log(title = "会员详细信息", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(MebInfo mebInfo)
    {
        return toAjax(mebInfoService.insertMebInfo(mebInfo));
    }

    /**
     * 修改会员详细信息
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        MebInfo mebInfo = mebInfoService.selectMebInfoById(id);
        mmap.put("mebInfo", mebInfo);
        return prefix + "/edit";
    }

    /**
     * 修改保存会员详细信息
     */
    @RequiresPermissions("kmps:info:edit")
    @Log(title = "会员详细信息", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(MebInfo mebInfo)
    {
        return toAjax(mebInfoService.updateMebInfo(mebInfo));
    }

    /**
     * 删除会员详细信息
     */
    @RequiresPermissions("kmps:info:remove")
    @Log(title = "会员详细信息", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(mebInfoService.deleteMebInfoByIds(ids));
    }
}
