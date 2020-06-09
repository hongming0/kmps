package com.ruoyi.kmps.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.kmps.mapper.MebOpinionSaleafteroprMapper;
import com.ruoyi.kmps.domain.MebOpinionSaleafteropr;
import com.ruoyi.kmps.service.IMebOpinionSaleafteroprService;
import com.ruoyi.common.core.text.Convert;

/**
 * 售后单操作记录Service业务层处理
 * 
 * @author ruoyi
 * @date 2020-06-08
 */
@Service
public class MebOpinionSaleafteroprServiceImpl implements IMebOpinionSaleafteroprService 
{
    @Autowired
    private MebOpinionSaleafteroprMapper mebOpinionSaleafteroprMapper;

    /**
     * 查询售后单操作记录
     * 
     * @param id 售后单操作记录ID
     * @return 售后单操作记录
     */
    @Override
    public MebOpinionSaleafteropr selectMebOpinionSaleafteroprById(Long id)
    {
        return mebOpinionSaleafteroprMapper.selectMebOpinionSaleafteroprById(id);
    }

    /**
     * 查询售后单操作记录列表
     * 
     * @param mebOpinionSaleafteropr 售后单操作记录
     * @return 售后单操作记录
     */
    @Override
    public List<MebOpinionSaleafteropr> selectMebOpinionSaleafteroprList(MebOpinionSaleafteropr mebOpinionSaleafteropr)
    {
        return mebOpinionSaleafteroprMapper.selectMebOpinionSaleafteroprList(mebOpinionSaleafteropr);
    }

    /**
     * 新增售后单操作记录
     * 
     * @param mebOpinionSaleafteropr 售后单操作记录
     * @return 结果
     */
    @Override
    public int insertMebOpinionSaleafteropr(MebOpinionSaleafteropr mebOpinionSaleafteropr)
    {
        mebOpinionSaleafteropr.setCreateTime(DateUtils.getNowDate());
        return mebOpinionSaleafteroprMapper.insertMebOpinionSaleafteropr(mebOpinionSaleafteropr);
    }

    /**
     * 修改售后单操作记录
     * 
     * @param mebOpinionSaleafteropr 售后单操作记录
     * @return 结果
     */
    @Override
    public int updateMebOpinionSaleafteropr(MebOpinionSaleafteropr mebOpinionSaleafteropr)
    {
        return mebOpinionSaleafteroprMapper.updateMebOpinionSaleafteropr(mebOpinionSaleafteropr);
    }

    /**
     * 删除售后单操作记录对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteMebOpinionSaleafteroprByIds(String ids)
    {
        return mebOpinionSaleafteroprMapper.deleteMebOpinionSaleafteroprByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除售后单操作记录信息
     * 
     * @param id 售后单操作记录ID
     * @return 结果
     */
    @Override
    public int deleteMebOpinionSaleafteroprById(Long id)
    {
        return mebOpinionSaleafteroprMapper.deleteMebOpinionSaleafteroprById(id);
    }
}
