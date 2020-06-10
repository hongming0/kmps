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
import com.ruoyi.kmps.domain.AddrEdifice;
import com.ruoyi.kmps.service.IAddrEdificeService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 楼宇Controller
 * 
 * @author ruoyi
 * @date 2020-06-10
 */
@Controller
@RequestMapping("/kmps/edifice")
public class AddrEdificeController extends BaseController
{
    private String prefix = "kmps/edifice";

    @Autowired
    private IAddrEdificeService addrEdificeService;

    @RequiresPermissions("kmps:edifice:view")
    @GetMapping()
    public String edifice()
    {
        return prefix + "/edifice";
    }

    /**
     * 查询楼宇列表
     */
    @RequiresPermissions("kmps:edifice:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(AddrEdifice addrEdifice)
    {
        startPage();
        List<AddrEdifice> list = addrEdificeService.selectAddrEdificeList(addrEdifice);
        return getDataTable(list);
    }

    /**
     * 导出楼宇列表
     */
    @RequiresPermissions("kmps:edifice:export")
    @Log(title = "楼宇", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(AddrEdifice addrEdifice)
    {
        List<AddrEdifice> list = addrEdificeService.selectAddrEdificeList(addrEdifice);
        ExcelUtil<AddrEdifice> util = new ExcelUtil<AddrEdifice>(AddrEdifice.class);
        return util.exportExcel(list, "edifice");
    }

    /**
     * 新增楼宇
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存楼宇
     */
    @RequiresPermissions("kmps:edifice:add")
    @Log(title = "楼宇", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(AddrEdifice addrEdifice)
    {
        return toAjax(addrEdificeService.insertAddrEdifice(addrEdifice));
    }

    /**
     * 修改楼宇
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        AddrEdifice addrEdifice = addrEdificeService.selectAddrEdificeById(id);
        mmap.put("addrEdifice", addrEdifice);
        return prefix + "/edit";
    }

    /**
     * 修改保存楼宇
     */
    @RequiresPermissions("kmps:edifice:edit")
    @Log(title = "楼宇", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(AddrEdifice addrEdifice)
    {
        return toAjax(addrEdificeService.updateAddrEdifice(addrEdifice));
    }

    /**
     * 删除楼宇
     */
    @RequiresPermissions("kmps:edifice:remove")
    @Log(title = "楼宇", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(addrEdificeService.deleteAddrEdificeByIds(ids));
    }
}
