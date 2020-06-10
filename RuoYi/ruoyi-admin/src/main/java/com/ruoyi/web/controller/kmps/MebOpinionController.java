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
import com.ruoyi.kmps.domain.MebOpinion;
import com.ruoyi.kmps.service.IMebOpinionService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 投诉Controller
 * 
 * @author ruoyi
 * @date 2020-06-10
 */
@Controller
@RequestMapping("/kmps/opinion")
public class MebOpinionController extends BaseController
{
    private String prefix = "kmps/opinion";

    @Autowired
    private IMebOpinionService mebOpinionService;

    @RequiresPermissions("kmps:opinion:view")
    @GetMapping()
    public String opinion()
    {
        return prefix + "/opinion";
    }

    /**
     * 查询投诉列表
     */
    @RequiresPermissions("kmps:opinion:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(MebOpinion mebOpinion)
    {
        startPage();
        List<MebOpinion> list = mebOpinionService.selectMebOpinionList(mebOpinion);
        return getDataTable(list);
    }

    /**
     * 导出投诉列表
     */
    @RequiresPermissions("kmps:opinion:export")
    @Log(title = "投诉", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(MebOpinion mebOpinion)
    {
        List<MebOpinion> list = mebOpinionService.selectMebOpinionList(mebOpinion);
        ExcelUtil<MebOpinion> util = new ExcelUtil<MebOpinion>(MebOpinion.class);
        return util.exportExcel(list, "opinion");
    }

    /**
     * 新增投诉
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存投诉
     */
    @RequiresPermissions("kmps:opinion:add")
    @Log(title = "投诉", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(MebOpinion mebOpinion)
    {
        return toAjax(mebOpinionService.insertMebOpinion(mebOpinion));
    }

    /**
     * 修改投诉
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        MebOpinion mebOpinion = mebOpinionService.selectMebOpinionById(id);
        mmap.put("mebOpinion", mebOpinion);
        return prefix + "/edit";
    }

    /**
     * 修改保存投诉
     */
    @RequiresPermissions("kmps:opinion:edit")
    @Log(title = "投诉", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(MebOpinion mebOpinion)
    {
        return toAjax(mebOpinionService.updateMebOpinion(mebOpinion));
    }

    /**
     * 删除投诉
     */
    @RequiresPermissions("kmps:opinion:remove")
    @Log(title = "投诉", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(mebOpinionService.deleteMebOpinionByIds(ids));
    }
}
