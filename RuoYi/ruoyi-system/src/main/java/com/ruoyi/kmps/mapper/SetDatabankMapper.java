package com.ruoyi.kmps.mapper;

import java.util.List;
import com.ruoyi.kmps.domain.SetDatabank;

/**
 * 银行信息Mapper接口
 * 
 * @author ruoyi
 * @date 2020-06-06
 */
public interface SetDatabankMapper 
{
    /**
     * 查询银行信息
     * 
     * @param id 银行信息ID
     * @return 银行信息
     */
    public SetDatabank selectSetDatabankById(Long id);

    /**
     * 查询银行信息列表
     * 
     * @param setDatabank 银行信息
     * @return 银行信息集合
     */
    public List<SetDatabank> selectSetDatabankList(SetDatabank setDatabank);

    /**
     * 新增银行信息
     * 
     * @param setDatabank 银行信息
     * @return 结果
     */
    public int insertSetDatabank(SetDatabank setDatabank);

    /**
     * 修改银行信息
     * 
     * @param setDatabank 银行信息
     * @return 结果
     */
    public int updateSetDatabank(SetDatabank setDatabank);

    /**
     * 删除银行信息
     * 
     * @param id 银行信息ID
     * @return 结果
     */
    public int deleteSetDatabankById(Long id);

    /**
     * 批量删除银行信息
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteSetDatabankByIds(String[] ids);
}
