package com.ruoyi.kmps.service;

import java.util.List;
import com.ruoyi.kmps.domain.MebOpinionSaleafteropr;

/**
 * 售后单操作记录Service接口
 * 
 * @author ruoyi
 * @date 2020-06-10
 */
public interface IMebOpinionSaleafteroprService 
{
    /**
     * 查询售后单操作记录
     * 
     * @param id 售后单操作记录ID
     * @return 售后单操作记录
     */
    public MebOpinionSaleafteropr selectMebOpinionSaleafteroprById(Long id);

    /**
     * 查询售后单操作记录列表
     * 
     * @param mebOpinionSaleafteropr 售后单操作记录
     * @return 售后单操作记录集合
     */
    public List<MebOpinionSaleafteropr> selectMebOpinionSaleafteroprList(MebOpinionSaleafteropr mebOpinionSaleafteropr);

    /**
     * 新增售后单操作记录
     * 
     * @param mebOpinionSaleafteropr 售后单操作记录
     * @return 结果
     */
    public int insertMebOpinionSaleafteropr(MebOpinionSaleafteropr mebOpinionSaleafteropr);

    /**
     * 修改售后单操作记录
     * 
     * @param mebOpinionSaleafteropr 售后单操作记录
     * @return 结果
     */
    public int updateMebOpinionSaleafteropr(MebOpinionSaleafteropr mebOpinionSaleafteropr);

    /**
     * 批量删除售后单操作记录
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteMebOpinionSaleafteroprByIds(String ids);

    /**
     * 删除售后单操作记录信息
     * 
     * @param id 售后单操作记录ID
     * @return 结果
     */
    public int deleteMebOpinionSaleafteroprById(Long id);
}
