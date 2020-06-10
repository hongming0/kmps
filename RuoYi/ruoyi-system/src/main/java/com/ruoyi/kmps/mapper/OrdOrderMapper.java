package com.ruoyi.kmps.mapper;

import java.util.List;
import com.ruoyi.kmps.domain.OrdOrder;

/**
 * 订单Mapper接口
 * 
 * @author ruoyi
 * @date 2020-06-10
 */
public interface OrdOrderMapper 
{
    /**
     * 查询订单
     * 
     * @param id 订单ID
     * @return 订单
     */
    public OrdOrder selectOrdOrderById(Long id);

    /**
     * 查询订单列表
     * 
     * @param ordOrder 订单
     * @return 订单集合
     */
    public List<OrdOrder> selectOrdOrderList(OrdOrder ordOrder);

    /**
     * 新增订单
     * 
     * @param ordOrder 订单
     * @return 结果
     */
    public int insertOrdOrder(OrdOrder ordOrder);

    /**
     * 修改订单
     * 
     * @param ordOrder 订单
     * @return 结果
     */
    public int updateOrdOrder(OrdOrder ordOrder);

    /**
     * 删除订单
     * 
     * @param id 订单ID
     * @return 结果
     */
    public int deleteOrdOrderById(Long id);

    /**
     * 批量删除订单
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteOrdOrderByIds(String[] ids);
}
