package com.ruoyi.kmps.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.kmps.mapper.MebSiginInMapper;
import com.ruoyi.kmps.domain.MebSiginIn;
import com.ruoyi.kmps.service.IMebSiginInService;
import com.ruoyi.common.core.text.Convert;

/**
 * 【请填写功能名称】Service业务层处理
 * 
 * @author ruoyi
 * @date 2020-06-06
 */
@Service
public class MebSiginInServiceImpl implements IMebSiginInService 
{
    @Autowired
    private MebSiginInMapper mebSiginInMapper;

    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    @Override
    public MebSiginIn selectMebSiginInById(Long id)
    {
        return mebSiginInMapper.selectMebSiginInById(id);
    }

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param mebSiginIn 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<MebSiginIn> selectMebSiginInList(MebSiginIn mebSiginIn)
    {
        return mebSiginInMapper.selectMebSiginInList(mebSiginIn);
    }

    /**
     * 新增【请填写功能名称】
     * 
     * @param mebSiginIn 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertMebSiginIn(MebSiginIn mebSiginIn)
    {
        return mebSiginInMapper.insertMebSiginIn(mebSiginIn);
    }

    /**
     * 修改【请填写功能名称】
     * 
     * @param mebSiginIn 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateMebSiginIn(MebSiginIn mebSiginIn)
    {
        return mebSiginInMapper.updateMebSiginIn(mebSiginIn);
    }

    /**
     * 删除【请填写功能名称】对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteMebSiginInByIds(String ids)
    {
        return mebSiginInMapper.deleteMebSiginInByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param id 【请填写功能名称】ID
     * @return 结果
     */
    @Override
    public int deleteMebSiginInById(Long id)
    {
        return mebSiginInMapper.deleteMebSiginInById(id);
    }
}
