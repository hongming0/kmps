package com.ruoyi.kmps.mapper;

import java.util.List;
import com.ruoyi.kmps.domain.OrdPay;

/**
 * 订单支付记录Mapper接口
 * 
 * @author ruoyi
 * @date 2020-06-10
 */
public interface OrdPayMapper 
{
    /**
     * 查询订单支付记录
     * 
     * @param id 订单支付记录ID
     * @return 订单支付记录
     */
    public OrdPay selectOrdPayById(Long id);

    /**
     * 查询订单支付记录列表
     * 
     * @param ordPay 订单支付记录
     * @return 订单支付记录集合
     */
    public List<OrdPay> selectOrdPayList(OrdPay ordPay);

    /**
     * 新增订单支付记录
     * 
     * @param ordPay 订单支付记录
     * @return 结果
     */
    public int insertOrdPay(OrdPay ordPay);

    /**
     * 修改订单支付记录
     * 
     * @param ordPay 订单支付记录
     * @return 结果
     */
    public int updateOrdPay(OrdPay ordPay);

    /**
     * 删除订单支付记录
     * 
     * @param id 订单支付记录ID
     * @return 结果
     */
    public int deleteOrdPayById(Long id);

    /**
     * 批量删除订单支付记录
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteOrdPayByIds(String[] ids);
}
