package com.ruoyi.kmps.service;

import java.util.List;
import com.ruoyi.kmps.domain.OrdActivityPrice;

/**
 * 【请填写功能名称】Service接口
 * 
 * @author ruoyi
 * @date 2020-06-06
 */
public interface IOrdActivityPriceService 
{
    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    public OrdActivityPrice selectOrdActivityPriceById(Long id);

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param ordActivityPrice 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<OrdActivityPrice> selectOrdActivityPriceList(OrdActivityPrice ordActivityPrice);

    /**
     * 新增【请填写功能名称】
     * 
     * @param ordActivityPrice 【请填写功能名称】
     * @return 结果
     */
    public int insertOrdActivityPrice(OrdActivityPrice ordActivityPrice);

    /**
     * 修改【请填写功能名称】
     * 
     * @param ordActivityPrice 【请填写功能名称】
     * @return 结果
     */
    public int updateOrdActivityPrice(OrdActivityPrice ordActivityPrice);

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteOrdActivityPriceByIds(String ids);

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param id 【请填写功能名称】ID
     * @return 结果
     */
    public int deleteOrdActivityPriceById(Long id);
}
