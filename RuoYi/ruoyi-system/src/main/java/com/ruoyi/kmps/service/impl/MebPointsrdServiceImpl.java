package com.ruoyi.kmps.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.kmps.mapper.MebPointsrdMapper;
import com.ruoyi.kmps.domain.MebPointsrd;
import com.ruoyi.kmps.service.IMebPointsrdService;
import com.ruoyi.common.core.text.Convert;

/**
 * 积分明细Service业务层处理
 * 
 * @author ruoyi
 * @date 2020-06-06
 */
@Service
public class MebPointsrdServiceImpl implements IMebPointsrdService 
{
    @Autowired
    private MebPointsrdMapper mebPointsrdMapper;

    /**
     * 查询积分明细
     * 
     * @param id 积分明细ID
     * @return 积分明细
     */
    @Override
    public MebPointsrd selectMebPointsrdById(Long id)
    {
        return mebPointsrdMapper.selectMebPointsrdById(id);
    }

    /**
     * 查询积分明细列表
     * 
     * @param mebPointsrd 积分明细
     * @return 积分明细
     */
    @Override
    public List<MebPointsrd> selectMebPointsrdList(MebPointsrd mebPointsrd)
    {
        return mebPointsrdMapper.selectMebPointsrdList(mebPointsrd);
    }

    /**
     * 新增积分明细
     * 
     * @param mebPointsrd 积分明细
     * @return 结果
     */
    @Override
    public int insertMebPointsrd(MebPointsrd mebPointsrd)
    {
        return mebPointsrdMapper.insertMebPointsrd(mebPointsrd);
    }

    /**
     * 修改积分明细
     * 
     * @param mebPointsrd 积分明细
     * @return 结果
     */
    @Override
    public int updateMebPointsrd(MebPointsrd mebPointsrd)
    {
        return mebPointsrdMapper.updateMebPointsrd(mebPointsrd);
    }

    /**
     * 删除积分明细对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteMebPointsrdByIds(String ids)
    {
        return mebPointsrdMapper.deleteMebPointsrdByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除积分明细信息
     * 
     * @param id 积分明细ID
     * @return 结果
     */
    @Override
    public int deleteMebPointsrdById(Long id)
    {
        return mebPointsrdMapper.deleteMebPointsrdById(id);
    }
}
