package com.ruoyi.kmps.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.kmps.mapper.OrdPayMapper;
import com.ruoyi.kmps.domain.OrdPay;
import com.ruoyi.kmps.service.IOrdPayService;
import com.ruoyi.common.core.text.Convert;

/**
 * 订单支付记录Service业务层处理
 * 
 * @author ruoyi
 * @date 2020-06-10
 */
@Service
public class OrdPayServiceImpl implements IOrdPayService 
{
    @Autowired
    private OrdPayMapper ordPayMapper;

    /**
     * 查询订单支付记录
     * 
     * @param id 订单支付记录ID
     * @return 订单支付记录
     */
    @Override
    public OrdPay selectOrdPayById(Long id)
    {
        return ordPayMapper.selectOrdPayById(id);
    }

    /**
     * 查询订单支付记录列表
     * 
     * @param ordPay 订单支付记录
     * @return 订单支付记录
     */
    @Override
    public List<OrdPay> selectOrdPayList(OrdPay ordPay)
    {
        return ordPayMapper.selectOrdPayList(ordPay);
    }

    /**
     * 新增订单支付记录
     * 
     * @param ordPay 订单支付记录
     * @return 结果
     */
    @Override
    public int insertOrdPay(OrdPay ordPay)
    {
        ordPay.setCreateTime(DateUtils.getNowDate());
        return ordPayMapper.insertOrdPay(ordPay);
    }

    /**
     * 修改订单支付记录
     * 
     * @param ordPay 订单支付记录
     * @return 结果
     */
    @Override
    public int updateOrdPay(OrdPay ordPay)
    {
        return ordPayMapper.updateOrdPay(ordPay);
    }

    /**
     * 删除订单支付记录对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteOrdPayByIds(String ids)
    {
        return ordPayMapper.deleteOrdPayByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除订单支付记录信息
     * 
     * @param id 订单支付记录ID
     * @return 结果
     */
    @Override
    public int deleteOrdPayById(Long id)
    {
        return ordPayMapper.deleteOrdPayById(id);
    }
}
