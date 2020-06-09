package com.ruoyi.kmps.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.kmps.mapper.SetDatacityMapper;
import com.ruoyi.kmps.domain.SetDatacity;
import com.ruoyi.kmps.service.ISetDatacityService;
import com.ruoyi.common.core.text.Convert;

/**
 * 省市数据Service业务层处理
 * 
 * @author ruoyi
 * @date 2020-06-06
 */
@Service
public class SetDatacityServiceImpl implements ISetDatacityService 
{
    @Autowired
    private SetDatacityMapper setDatacityMapper;

    /**
     * 查询省市数据
     * 
     * @param idno 省市数据ID
     * @return 省市数据
     */
    @Override
    public SetDatacity selectSetDatacityById(String idno)
    {
        return setDatacityMapper.selectSetDatacityById(idno);
    }

    /**
     * 查询省市数据列表
     * 
     * @param setDatacity 省市数据
     * @return 省市数据
     */
    @Override
    public List<SetDatacity> selectSetDatacityList(SetDatacity setDatacity)
    {
        return setDatacityMapper.selectSetDatacityList(setDatacity);
    }

    /**
     * 新增省市数据
     * 
     * @param setDatacity 省市数据
     * @return 结果
     */
    @Override
    public int insertSetDatacity(SetDatacity setDatacity)
    {
        return setDatacityMapper.insertSetDatacity(setDatacity);
    }

    /**
     * 修改省市数据
     * 
     * @param setDatacity 省市数据
     * @return 结果
     */
    @Override
    public int updateSetDatacity(SetDatacity setDatacity)
    {
        return setDatacityMapper.updateSetDatacity(setDatacity);
    }

    /**
     * 删除省市数据对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteSetDatacityByIds(String ids)
    {
        return setDatacityMapper.deleteSetDatacityByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除省市数据信息
     * 
     * @param idno 省市数据ID
     * @return 结果
     */
    @Override
    public int deleteSetDatacityById(String idno)
    {
        return setDatacityMapper.deleteSetDatacityById(idno);
    }
}
