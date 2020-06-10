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
import com.ruoyi.kmps.domain.AddrEdificeGroup;
import com.ruoyi.kmps.service.IAddrEdificeGroupService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 分组Controller
 * 
 * @author ruoyi
 * @date 2020-06-10
 */
@Controller
@RequestMapping("/kmps/group")
public class AddrEdificeGroupController extends BaseController
{
    private String prefix = "kmps/group";

    @Autowired
    private IAddrEdificeGroupService addrEdificeGroupService;

    @RequiresPermissions("kmps:group:view")
    @GetMapping()
    public String group()
    {
        return prefix + "/group";
    }

    /**
     * 查询分组列表
     */
    @RequiresPermissions("kmps:group:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(AddrEdificeGroup addrEdificeGroup)
    {
        startPage();
        List<AddrEdificeGroup> list = addrEdificeGroupService.selectAddrEdificeGroupList(addrEdificeGroup);
        return getDataTable(list);
    }

    /**
     * 导出分组列表
     */
    @RequiresPermissions("kmps:group:export")
    @Log(title = "分组", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(AddrEdificeGroup addrEdificeGroup)
    {
        List<AddrEdificeGroup> list = addrEdificeGroupService.selectAddrEdificeGroupList(addrEdificeGroup);
        ExcelUtil<AddrEdificeGroup> util = new ExcelUtil<AddrEdificeGroup>(AddrEdificeGroup.class);
        return util.exportExcel(list, "group");
    }

    /**
     * 新增分组
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存分组
     */
    @RequiresPermissions("kmps:group:add")
    @Log(title = "分组", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(AddrEdificeGroup addrEdificeGroup)
    {
        return toAjax(addrEdificeGroupService.insertAddrEdificeGroup(addrEdificeGroup));
    }

    /**
     * 修改分组
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        AddrEdificeGroup addrEdificeGroup = addrEdificeGroupService.selectAddrEdificeGroupById(id);
        mmap.put("addrEdificeGroup", addrEdificeGroup);
        return prefix + "/edit";
    }

    /**
     * 修改保存分组
     */
    @RequiresPermissions("kmps:group:edit")
    @Log(title = "分组", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(AddrEdificeGroup addrEdificeGroup)
    {
        return toAjax(addrEdificeGroupService.updateAddrEdificeGroup(addrEdificeGroup));
    }

    /**
     * 删除分组
     */
    @RequiresPermissions("kmps:group:remove")
    @Log(title = "分组", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(addrEdificeGroupService.deleteAddrEdificeGroupByIds(ids));
    }
}
