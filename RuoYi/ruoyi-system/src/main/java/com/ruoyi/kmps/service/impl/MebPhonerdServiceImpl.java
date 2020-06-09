package com.ruoyi.kmps.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.kmps.mapper.MebPhonerdMapper;
import com.ruoyi.kmps.domain.MebPhonerd;
import com.ruoyi.kmps.service.IMebPhonerdService;
import com.ruoyi.common.core.text.Convert;

/**
 * 手机号变更记录Service业务层处理
 * 
 * @author ruoyi
 * @date 2020-06-06
 */
@Service
public class MebPhonerdServiceImpl implements IMebPhonerdService 
{
    @Autowired
    private MebPhonerdMapper mebPhonerdMapper;

    /**
     * 查询手机号变更记录
     * 
     * @param id 手机号变更记录ID
     * @return 手机号变更记录
     */
    @Override
    public MebPhonerd selectMebPhonerdById(Long id)
    {
        return mebPhonerdMapper.selectMebPhonerdById(id);
    }

    /**
     * 查询手机号变更记录列表
     * 
     * @param mebPhonerd 手机号变更记录
     * @return 手机号变更记录
     */
    @Override
    public List<MebPhonerd> selectMebPhonerdList(MebPhonerd mebPhonerd)
    {
        return mebPhonerdMapper.selectMebPhonerdList(mebPhonerd);
    }

    /**
     * 新增手机号变更记录
     * 
     * @param mebPhonerd 手机号变更记录
     * @return 结果
     */
    @Override
    public int insertMebPhonerd(MebPhonerd mebPhonerd)
    {
        return mebPhonerdMapper.insertMebPhonerd(mebPhonerd);
    }

    /**
     * 修改手机号变更记录
     * 
     * @param mebPhonerd 手机号变更记录
     * @return 结果
     */
    @Override
    public int updateMebPhonerd(MebPhonerd mebPhonerd)
    {
        return mebPhonerdMapper.updateMebPhonerd(mebPhonerd);
    }

    /**
     * 删除手机号变更记录对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteMebPhonerdByIds(String ids)
    {
        return mebPhonerdMapper.deleteMebPhonerdByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除手机号变更记录信息
     * 
     * @param id 手机号变更记录ID
     * @return 结果
     */
    @Override
    public int deleteMebPhonerdById(Long id)
    {
        return mebPhonerdMapper.deleteMebPhonerdById(id);
    }
}
