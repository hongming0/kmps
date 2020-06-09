package com.ruoyi.kmps.mapper;

import java.util.List;
import com.ruoyi.kmps.domain.SetDatacity;

/**
 * 省市数据Mapper接口
 * 
 * @author ruoyi
 * @date 2020-06-06
 */
public interface SetDatacityMapper 
{
    /**
     * 查询省市数据
     * 
     * @param idno 省市数据ID
     * @return 省市数据
     */
    public SetDatacity selectSetDatacityById(String idno);

    /**
     * 查询省市数据列表
     * 
     * @param setDatacity 省市数据
     * @return 省市数据集合
     */
    public List<SetDatacity> selectSetDatacityList(SetDatacity setDatacity);

    /**
     * 新增省市数据
     * 
     * @param setDatacity 省市数据
     * @return 结果
     */
    public int insertSetDatacity(SetDatacity setDatacity);

    /**
     * 修改省市数据
     * 
     * @param setDatacity 省市数据
     * @return 结果
     */
    public int updateSetDatacity(SetDatacity setDatacity);

    /**
     * 删除省市数据
     * 
     * @param idno 省市数据ID
     * @return 结果
     */
    public int deleteSetDatacityById(String idno);

    /**
     * 批量删除省市数据
     * 
     * @param idnos 需要删除的数据ID
     * @return 结果
     */
    public int deleteSetDatacityByIds(String[] idnos);
}
