package com.ruoyi.kmps.service;

import java.util.List;
import com.ruoyi.kmps.domain.OrdOrder;

/**
 * 【请填写功能名称】Service接口
 * 
 * @author ruoyi
 * @date 2020-06-06
 */
public interface IOrdOrderService 
{
    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    public OrdOrder selectOrdOrderById(Long id);

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param ordOrder 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<OrdOrder> selectOrdOrderList(OrdOrder ordOrder);

    /**
     * 新增【请填写功能名称】
     * 
     * @param ordOrder 【请填写功能名称】
     * @return 结果
     */
    public int insertOrdOrder(OrdOrder ordOrder);

    /**
     * 修改【请填写功能名称】
     * 
     * @param ordOrder 【请填写功能名称】
     * @return 结果
     */
    public int updateOrdOrder(OrdOrder ordOrder);

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteOrdOrderByIds(String ids);

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param id 【请填写功能名称】ID
     * @return 结果
     */
    public int deleteOrdOrderById(Long id);
}
