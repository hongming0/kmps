package com.ruoyi.kmps.service;

import java.util.List;
import com.ruoyi.kmps.domain.OrdActivityPrice;

/**
 * 楼宇价格Service接口
 * 
 * @author ruoyi
 * @date 2020-06-10
 */
public interface IOrdActivityPriceService 
{
    /**
     * 查询楼宇价格
     * 
     * @param id 楼宇价格ID
     * @return 楼宇价格
     */
    public OrdActivityPrice selectOrdActivityPriceById(Long id);

    /**
     * 查询楼宇价格列表
     * 
     * @param ordActivityPrice 楼宇价格
     * @return 楼宇价格集合
     */
    public List<OrdActivityPrice> selectOrdActivityPriceList(OrdActivityPrice ordActivityPrice);

    /**
     * 新增楼宇价格
     * 
     * @param ordActivityPrice 楼宇价格
     * @return 结果
     */
    public int insertOrdActivityPrice(OrdActivityPrice ordActivityPrice);

    /**
     * 修改楼宇价格
     * 
     * @param ordActivityPrice 楼宇价格
     * @return 结果
     */
    public int updateOrdActivityPrice(OrdActivityPrice ordActivityPrice);

    /**
     * 批量删除楼宇价格
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteOrdActivityPriceByIds(String ids);

    /**
     * 删除楼宇价格信息
     * 
     * @param id 楼宇价格ID
     * @return 结果
     */
    public int deleteOrdActivityPriceById(Long id);
}
