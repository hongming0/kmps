package com.ruoyi.kmps.service;

import java.util.List;
import com.ruoyi.kmps.domain.OrdPay;

/**
 * 【请填写功能名称】Service接口
 * 
 * @author ruoyi
 * @date 2020-06-06
 */
public interface IOrdPayService 
{
    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    public OrdPay selectOrdPayById(Long id);

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param ordPay 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<OrdPay> selectOrdPayList(OrdPay ordPay);

    /**
     * 新增【请填写功能名称】
     * 
     * @param ordPay 【请填写功能名称】
     * @return 结果
     */
    public int insertOrdPay(OrdPay ordPay);

    /**
     * 修改【请填写功能名称】
     * 
     * @param ordPay 【请填写功能名称】
     * @return 结果
     */
    public int updateOrdPay(OrdPay ordPay);

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteOrdPayByIds(String ids);

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param id 【请填写功能名称】ID
     * @return 结果
     */
    public int deleteOrdPayById(Long id);
}
