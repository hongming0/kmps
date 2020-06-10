package com.ruoyi.kmps.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.kmps.mapper.MebAddrlistMapper;
import com.ruoyi.kmps.domain.MebAddrlist;
import com.ruoyi.kmps.service.IMebAddrlistService;
import com.ruoyi.common.core.text.Convert;

/**
 * 会员地址列Service业务层处理
 * 
 * @author ruoyi
 * @date 2020-06-10
 */
@Service
public class MebAddrlistServiceImpl implements IMebAddrlistService 
{
    @Autowired
    private MebAddrlistMapper mebAddrlistMapper;

    /**
     * 查询会员地址列
     * 
     * @param id 会员地址列ID
     * @return 会员地址列
     */
    @Override
    public MebAddrlist selectMebAddrlistById(Long id)
    {
        return mebAddrlistMapper.selectMebAddrlistById(id);
    }

    /**
     * 查询会员地址列列表
     * 
     * @param mebAddrlist 会员地址列
     * @return 会员地址列
     */
    @Override
    public List<MebAddrlist> selectMebAddrlistList(MebAddrlist mebAddrlist)
    {
        return mebAddrlistMapper.selectMebAddrlistList(mebAddrlist);
    }

    /**
     * 新增会员地址列
     * 
     * @param mebAddrlist 会员地址列
     * @return 结果
     */
    @Override
    public int insertMebAddrlist(MebAddrlist mebAddrlist)
    {
        mebAddrlist.setCreateTime(DateUtils.getNowDate());
        return mebAddrlistMapper.insertMebAddrlist(mebAddrlist);
    }

    /**
     * 修改会员地址列
     * 
     * @param mebAddrlist 会员地址列
     * @return 结果
     */
    @Override
    public int updateMebAddrlist(MebAddrlist mebAddrlist)
    {
        mebAddrlist.setUpdateTime(DateUtils.getNowDate());
        return mebAddrlistMapper.updateMebAddrlist(mebAddrlist);
    }

    /**
     * 删除会员地址列对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteMebAddrlistByIds(String ids)
    {
        return mebAddrlistMapper.deleteMebAddrlistByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除会员地址列信息
     * 
     * @param id 会员地址列ID
     * @return 结果
     */
    @Override
    public int deleteMebAddrlistById(Long id)
    {
        return mebAddrlistMapper.deleteMebAddrlistById(id);
    }
}
