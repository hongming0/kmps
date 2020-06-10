package com.ruoyi.kmps.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.kmps.mapper.SetDatabankMapper;
import com.ruoyi.kmps.domain.SetDatabank;
import com.ruoyi.kmps.service.ISetDatabankService;
import com.ruoyi.common.core.text.Convert;

/**
 * 银行信息Service业务层处理
 * 
 * @author ruoyi
 * @date 2020-06-10
 */
@Service
public class SetDatabankServiceImpl implements ISetDatabankService 
{
    @Autowired
    private SetDatabankMapper setDatabankMapper;

    /**
     * 查询银行信息
     * 
     * @param id 银行信息ID
     * @return 银行信息
     */
    @Override
    public SetDatabank selectSetDatabankById(Long id)
    {
        return setDatabankMapper.selectSetDatabankById(id);
    }

    /**
     * 查询银行信息列表
     * 
     * @param setDatabank 银行信息
     * @return 银行信息
     */
    @Override
    public List<SetDatabank> selectSetDatabankList(SetDatabank setDatabank)
    {
        return setDatabankMapper.selectSetDatabankList(setDatabank);
    }

    /**
     * 新增银行信息
     * 
     * @param setDatabank 银行信息
     * @return 结果
     */
    @Override
    public int insertSetDatabank(SetDatabank setDatabank)
    {
        return setDatabankMapper.insertSetDatabank(setDatabank);
    }

    /**
     * 修改银行信息
     * 
     * @param setDatabank 银行信息
     * @return 结果
     */
    @Override
    public int updateSetDatabank(SetDatabank setDatabank)
    {
        return setDatabankMapper.updateSetDatabank(setDatabank);
    }

    /**
     * 删除银行信息对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteSetDatabankByIds(String ids)
    {
        return setDatabankMapper.deleteSetDatabankByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除银行信息信息
     * 
     * @param id 银行信息ID
     * @return 结果
     */
    @Override
    public int deleteSetDatabankById(Long id)
    {
        return setDatabankMapper.deleteSetDatabankById(id);
    }
}
