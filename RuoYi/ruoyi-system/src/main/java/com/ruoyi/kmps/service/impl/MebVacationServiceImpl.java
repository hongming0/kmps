package com.ruoyi.kmps.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.kmps.mapper.MebVacationMapper;
import com.ruoyi.kmps.domain.MebVacation;
import com.ruoyi.kmps.service.IMebVacationService;
import com.ruoyi.common.core.text.Convert;

/**
 * 会员休假Service业务层处理
 * 
 * @author ruoyi
 * @date 2020-06-10
 */
@Service
public class MebVacationServiceImpl implements IMebVacationService 
{
    @Autowired
    private MebVacationMapper mebVacationMapper;

    /**
     * 查询会员休假
     * 
     * @param id 会员休假ID
     * @return 会员休假
     */
    @Override
    public MebVacation selectMebVacationById(Long id)
    {
        return mebVacationMapper.selectMebVacationById(id);
    }

    /**
     * 查询会员休假列表
     * 
     * @param mebVacation 会员休假
     * @return 会员休假
     */
    @Override
    public List<MebVacation> selectMebVacationList(MebVacation mebVacation)
    {
        return mebVacationMapper.selectMebVacationList(mebVacation);
    }

    /**
     * 新增会员休假
     * 
     * @param mebVacation 会员休假
     * @return 结果
     */
    @Override
    public int insertMebVacation(MebVacation mebVacation)
    {
        return mebVacationMapper.insertMebVacation(mebVacation);
    }

    /**
     * 修改会员休假
     * 
     * @param mebVacation 会员休假
     * @return 结果
     */
    @Override
    public int updateMebVacation(MebVacation mebVacation)
    {
        return mebVacationMapper.updateMebVacation(mebVacation);
    }

    /**
     * 删除会员休假对象
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
     * 删除会员休假信息
     * 
     * @param id 会员休假ID
     * @return 结果
     */
    @Override
    public int deleteMebVacationById(Long id)
    {
        return mebVacationMapper.deleteMebVacationById(id);
    }
}
