package com.ruoyi.kmps.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.kmps.mapper.MebVacationMapper;
import com.ruoyi.kmps.domain.MebVacation;
import com.ruoyi.kmps.service.IMebVacationService;
import com.ruoyi.common.core.text.Convert;

/**
 * 【请填写功能名称】Service业务层处理
 * 
 * @author ruoyi
 * @date 2020-06-06
 */
@Service
public class MebVacationServiceImpl implements IMebVacationService 
{
    @Autowired
    private MebVacationMapper mebVacationMapper;

    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    @Override
    public MebVacation selectMebVacationById(Long id)
    {
        return mebVacationMapper.selectMebVacationById(id);
    }

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param mebVacation 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<MebVacation> selectMebVacationList(MebVacation mebVacation)
    {
        return mebVacationMapper.selectMebVacationList(mebVacation);
    }

    /**
     * 新增【请填写功能名称】
     * 
     * @param mebVacation 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertMebVacation(MebVacation mebVacation)
    {
        return mebVacationMapper.insertMebVacation(mebVacation);
    }

    /**
     * 修改【请填写功能名称】
     * 
     * @param mebVacation 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateMebVacation(MebVacation mebVacation)
    {
        return mebVacationMapper.updateMebVacation(mebVacation);
    }

    /**
     * 删除【请填写功能名称】对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteMebVacationByIds(String ids)
    {
        return mebVacationMapper.deleteMebVacationByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param id 【请填写功能名称】ID
     * @return 结果
     */
    @Override
    public int deleteMebVacationById(Long id)
    {
        return mebVacationMapper.deleteMebVacationById(id);
    }
}
