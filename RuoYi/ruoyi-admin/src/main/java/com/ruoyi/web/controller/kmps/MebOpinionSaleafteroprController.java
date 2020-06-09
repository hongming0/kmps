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
import com.ruoyi.kmps.domain.MebOpinionSaleafteropr;
import com.ruoyi.kmps.service.IMebOpinionSaleafteroprService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 售后单操作记录Controller
 * 
 * @author ruoyi
 * @date 2020-06-06
 */
@Controller
@RequestMapping("/kmps/saleafteropr")
public class MebOpinionSaleafteroprController extends BaseController
{
    private String prefix = "kmps/saleafteropr";

    @Autowired
    private IMebOpinionSaleafteroprService mebOpinionSaleafteroprService;

    @RequiresPermissions("kmps:saleafteropr:view")
    @GetMapping()
    public String saleafteropr()
    {
        return prefix + "/saleafteropr";
    }

    /**
     * 查询售后单操作记录列表
     */
    @RequiresPermissions("kmps:saleafteropr:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(MebOpinionSaleafteropr mebOpinionSaleafteropr)
    {
        startPage();
        List<MebOpinionSaleafteropr> list = mebOpinionSaleafteroprService.selectMebOpinionSaleafteroprList(mebOpinionSaleafteropr);
        return getDataTable(list);
    }

    /**
     * 导出售后单操作记录列表
     */
    @RequiresPermissions("kmps:saleafteropr:export")
    @Log(title = "售后单操作记录", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(MebOpinionSaleafteropr mebOpinionSaleafteropr)
    {
        List<MebOpinionSaleafteropr> list = mebOpinionSaleafteroprService.selectMebOpinionSaleafteroprList(mebOpinionSaleafteropr);
        ExcelUtil<MebOpinionSaleafteropr> util = new ExcelUtil<MebOpinionSaleafteropr>(MebOpinionSaleafteropr.class);
        return util.exportExcel(list, "saleafteropr");
    }

    /**
     * 新增售后单操作记录
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存售后单操作记录
     */
    @RequiresPermissions("kmps:saleafteropr:add")
    @Log(title = "售后单操作记录", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(MebOpinionSaleafteropr mebOpinionSaleafteropr)
    {
        return toAjax(mebOpinionSaleafteroprService.insertMebOpinionSaleafteropr(mebOpinionSaleafteropr));
    }

    /**
     * 修改售后单操作记录
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        MebOpinionSaleafteropr mebOpinionSaleafteropr = mebOpinionSaleafteroprService.selectMebOpinionSaleafteroprById(id);
        mmap.put("mebOpinionSaleafteropr", mebOpinionSaleafteropr);
        return prefix + "/edit";
    }

    /**
     * 修改保存售后单操作记录
     */
    @RequiresPermissions("kmps:saleafteropr:edit")
    @Log(title = "售后单操作记录", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(MebOpinionSaleafteropr mebOpinionSaleafteropr)
    {
        return toAjax(mebOpinionSaleafteroprService.updateMebOpinionSaleafteropr(mebOpinionSaleafteropr));
    }

    /**
     * 删除售后单操作记录
     */
    @RequiresPermissions("kmps:saleafteropr:remove")
    @Log(title = "售后单操作记录", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(mebOpinionSaleafteroprService.deleteMebOpinionSaleafteroprByIds(ids));
    }
}
