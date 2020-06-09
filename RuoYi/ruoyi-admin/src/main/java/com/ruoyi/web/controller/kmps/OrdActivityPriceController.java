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
import com.ruoyi.kmps.domain.OrdActivityPrice;
import com.ruoyi.kmps.service.IOrdActivityPriceService;
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
@RequestMapping("/kmps/price")
public class OrdActivityPriceController extends BaseController
{
    private String prefix = "kmps/price";

    @Autowired
    private IOrdActivityPriceService ordActivityPriceService;

    @RequiresPermissions("kmps:price:view")
    @GetMapping()
    public String price()
    {
        return prefix + "/price";
    }

    /**
     * 查询【请填写功能名称】列表
     */
    @RequiresPermissions("kmps:price:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(OrdActivityPrice ordActivityPrice)
    {
        startPage();
        List<OrdActivityPrice> list = ordActivityPriceService.selectOrdActivityPriceList(ordActivityPrice);
        return getDataTable(list);
    }

    /**
     * 导出【请填写功能名称】列表
     */
    @RequiresPermissions("kmps:price:export")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(OrdActivityPrice ordActivityPrice)
    {
        List<OrdActivityPrice> list = ordActivityPriceService.selectOrdActivityPriceList(ordActivityPrice);
        ExcelUtil<OrdActivityPrice> util = new ExcelUtil<OrdActivityPrice>(OrdActivityPrice.class);
        return util.exportExcel(list, "price");
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
    @RequiresPermissions("kmps:price:add")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(OrdActivityPrice ordActivityPrice)
    {
        return toAjax(ordActivityPriceService.insertOrdActivityPrice(ordActivityPrice));
    }

    /**
     * 修改【请填写功能名称】
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        OrdActivityPrice ordActivityPrice = ordActivityPriceService.selectOrdActivityPriceById(id);
        mmap.put("ordActivityPrice", ordActivityPrice);
        return prefix + "/edit";
    }

    /**
     * 修改保存【请填写功能名称】
     */
    @RequiresPermissions("kmps:price:edit")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(OrdActivityPrice ordActivityPrice)
    {
        return toAjax(ordActivityPriceService.updateOrdActivityPrice(ordActivityPrice));
    }

    /**
     * 删除【请填写功能名称】
     */
    @RequiresPermissions("kmps:price:remove")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(ordActivityPriceService.deleteOrdActivityPriceByIds(ids));
    }
}
