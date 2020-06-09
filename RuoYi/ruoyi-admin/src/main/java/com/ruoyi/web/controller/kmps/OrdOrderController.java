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
import com.ruoyi.kmps.domain.OrdOrder;
import com.ruoyi.kmps.service.IOrdOrderService;
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
@RequestMapping("/kmps/order")
public class OrdOrderController extends BaseController
{
    private String prefix = "kmps/order";

    @Autowired
    private IOrdOrderService ordOrderService;

    @RequiresPermissions("kmps:order:view")
    @GetMapping()
    public String order()
    {
        return prefix + "/order";
    }

    /**
     * 查询【请填写功能名称】列表
     */
    @RequiresPermissions("kmps:order:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(OrdOrder ordOrder)
    {
        startPage();
        List<OrdOrder> list = ordOrderService.selectOrdOrderList(ordOrder);
        return getDataTable(list);
    }

    /**
     * 导出【请填写功能名称】列表
     */
    @RequiresPermissions("kmps:order:export")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(OrdOrder ordOrder)
    {
        List<OrdOrder> list = ordOrderService.selectOrdOrderList(ordOrder);
        ExcelUtil<OrdOrder> util = new ExcelUtil<OrdOrder>(OrdOrder.class);
        return util.exportExcel(list, "order");
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
    @RequiresPermissions("kmps:order:add")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(OrdOrder ordOrder)
    {
        return toAjax(ordOrderService.insertOrdOrder(ordOrder));
    }

    /**
     * 修改【请填写功能名称】
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        OrdOrder ordOrder = ordOrderService.selectOrdOrderById(id);
        mmap.put("ordOrder", ordOrder);
        return prefix + "/edit";
    }

    /**
     * 修改保存【请填写功能名称】
     */
    @RequiresPermissions("kmps:order:edit")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(OrdOrder ordOrder)
    {
        return toAjax(ordOrderService.updateOrdOrder(ordOrder));
    }

    /**
     * 删除【请填写功能名称】
     */
    @RequiresPermissions("kmps:order:remove")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(ordOrderService.deleteOrdOrderByIds(ids));
    }
}
