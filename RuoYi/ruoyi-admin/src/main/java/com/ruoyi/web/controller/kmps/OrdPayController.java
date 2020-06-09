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
import com.ruoyi.kmps.domain.OrdPay;
import com.ruoyi.kmps.service.IOrdPayService;
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
@RequestMapping("/kmps/pay")
public class OrdPayController extends BaseController
{
    private String prefix = "kmps/pay";

    @Autowired
    private IOrdPayService ordPayService;

    @RequiresPermissions("kmps:pay:view")
    @GetMapping()
    public String pay()
    {
        return prefix + "/pay";
    }

    /**
     * 查询【请填写功能名称】列表
     */
    @RequiresPermissions("kmps:pay:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(OrdPay ordPay)
    {
        startPage();
        List<OrdPay> list = ordPayService.selectOrdPayList(ordPay);
        return getDataTable(list);
    }

    /**
     * 导出【请填写功能名称】列表
     */
    @RequiresPermissions("kmps:pay:export")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(OrdPay ordPay)
    {
        List<OrdPay> list = ordPayService.selectOrdPayList(ordPay);
        ExcelUtil<OrdPay> util = new ExcelUtil<OrdPay>(OrdPay.class);
        return util.exportExcel(list, "pay");
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
    @RequiresPermissions("kmps:pay:add")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(OrdPay ordPay)
    {
        return toAjax(ordPayService.insertOrdPay(ordPay));
    }

    /**
     * 修改【请填写功能名称】
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        OrdPay ordPay = ordPayService.selectOrdPayById(id);
        mmap.put("ordPay", ordPay);
        return prefix + "/edit";
    }

    /**
     * 修改保存【请填写功能名称】
     */
    @RequiresPermissions("kmps:pay:edit")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(OrdPay ordPay)
    {
        return toAjax(ordPayService.updateOrdPay(ordPay));
    }

    /**
     * 删除【请填写功能名称】
     */
    @RequiresPermissions("kmps:pay:remove")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(ordPayService.deleteOrdPayByIds(ids));
    }
}
