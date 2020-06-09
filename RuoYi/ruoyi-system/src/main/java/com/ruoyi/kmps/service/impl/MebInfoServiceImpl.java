package com.ruoyi.kmps.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.kmps.mapper.MebInfoMapper;
import com.ruoyi.kmps.domain.MebInfo;
import com.ruoyi.kmps.service.IMebInfoService;
import com.ruoyi.common.core.text.Convert;

/**
 * 会员详细信息Service业务层处理
 * 
 * @author ruoyi
 * @date 2020-06-06
 */
@Service
public class MebInfoServiceImpl implements IMebInfoService 
{
    @Autowired
    private MebInfoMapper mebInfoMapper;

    /**
     * 查询会员详细信息
     * 
     * @param id 会员详细信息ID
     * @return 会员详细信息
     */
    @Override
    public MebInfo selectMebInfoById(Long id)
    {
        return mebInfoMapper.selectMebInfoById(id);
    }

    /**
     * 查询会员详细信息列表
     * 
     * @param mebInfo 会员详细信息
     * @return 会员详细信息
     */
    @Override
    public List<MebInfo> selectMebInfoList(MebInfo mebInfo)
    {
        return mebInfoMapper.selectMebInfoList(mebInfo);
    }

    /**
     * 新增会员详细信息
     * 
     * @param mebInfo 会员详细信息
     * @return 结果
     */
    @Override
    public int insertMebInfo(MebInfo mebInfo)
    {
        return mebInfoMapper.insertMebInfo(mebInfo);
    }

    /**
     * 修改会员详细信息
     * 
     * @param mebInfo 会员详细信息
     * @return 结果
     */
    @Override
    public int updateMebInfo(MebInfo mebInfo)
    {
        return mebInfoMapper.updateMebInfo(mebInfo);
    }

    /**
     * 删除会员详细信息对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteMebInfoByIds(String ids)
    {
        return mebInfoMapper.deleteMebInfoByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除会员详细信息信息
     * 
     * @param id 会员详细信息ID
     * @return 结果
     */
    @Override
    public int deleteMebInfoById(Long id)
    {
        return mebInfoMapper.deleteMebInfoById(id);
    }
}
