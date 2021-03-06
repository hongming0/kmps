package com.ruoyi.kmps.service;

import java.util.List;
import com.ruoyi.kmps.domain.SetDatacity;

/**
 * 省市数据Service接口
 * 
 * @author ruoyi
 * @date 2020-06-10
 */
public interface ISetDatacityService 
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
     * 批量删除省市数据
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteSetDatacityByIds(String ids);

    /**
     * 删除省市数据信息
     * 
     * @param idno 省市数据ID
     * @return 结果
     */
    public int deleteSetDatacityById(String idno);
}
