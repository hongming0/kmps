package com.ruoyi.kmps.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.kmps.mapper.MebOpinionMapper;
import com.ruoyi.kmps.domain.MebOpinion;
import com.ruoyi.kmps.service.IMebOpinionService;
import com.ruoyi.common.core.text.Convert;

/**
 * 投诉Service业务层处理
 * 
 * @author ruoyi
 * @date 2020-06-10
 */
@Service
public class MebOpinionServiceImpl implements IMebOpinionService 
{
    @Autowired
    private MebOpinionMapper mebOpinionMapper;

    /**
     * 查询投诉
     * 
     * @param id 投诉ID
     * @return 投诉
     */
    @Override
    public MebOpinion selectMebOpinionById(Long id)
    {
        return mebOpinionMapper.selectMebOpinionById(id);
    }

    /**
     * 查询投诉列表
     * 
     * @param mebOpinion 投诉
     * @return 投诉
     */
    @Override
    public List<MebOpinion> selectMebOpinionList(MebOpinion mebOpinion)
    {
        return mebOpinionMapper.selectMebOpinionList(mebOpinion);
    }

    /**
     * 新增投诉
     * 
     * @param mebOpinion 投诉
     * @return 结果
     */
    @Override
    public int insertMebOpinion(MebOpinion mebOpinion)
    {
        return mebOpinionMapper.insertMebOpinion(mebOpinion);
    }

    /**
     * 修改投诉
     * 
     * @param mebOpinion 投诉
     * @return 结果
     */
    @Override
    public int updateMebOpinion(MebOpinion mebOpinion)
    {
        return mebOpinionMapper.updateMebOpinion(mebOpinion);
    }

    /**
     * 删除投诉对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteMebOpinionByIds(String ids)
    {
        return mebOpinionMapper.deleteMebOpinionByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除投诉信息
     * 
     * @param id 投诉ID
     * @return 结果
     */
    @Override
    public int deleteMebOpinionById(Long id)
    {
        return mebOpinionMapper.deleteMebOpinionById(id);
    }
}
