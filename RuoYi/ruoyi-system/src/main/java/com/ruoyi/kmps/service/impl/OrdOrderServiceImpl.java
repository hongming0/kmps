package com.ruoyi.kmps.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.kmps.mapper.OrdOrderMapper;
import com.ruoyi.kmps.domain.OrdOrder;
import com.ruoyi.kmps.service.IOrdOrderService;
import com.ruoyi.common.core.text.Convert;

/**
 * 【请填写功能名称】Service业务层处理
 * 
 * @author ruoyi
 * @date 2020-06-06
 */
@Service
public class OrdOrderServiceImpl implements IOrdOrderService 
{
    @Autowired
    private OrdOrderMapper ordOrderMapper;

    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    @Override
    public OrdOrder selectOrdOrderById(Long id)
    {
        return ordOrderMapper.selectOrdOrderById(id);
    }

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param ordOrder 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<OrdOrder> selectOrdOrderList(OrdOrder ordOrder)
    {
        return ordOrderMapper.selectOrdOrderList(ordOrder);
    }

    /**
     * 新增【请填写功能名称】
     * 
     * @param ordOrder 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertOrdOrder(OrdOrder ordOrder)
    {
        return ordOrderMapper.insertOrdOrder(ordOrder);
    }

    /**
     * 修改【请填写功能名称】
     * 
     * @param ordOrder 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateOrdOrder(OrdOrder ordOrder)
    {
        return ordOrderMapper.updateOrdOrder(ordOrder);
    }

    /**
     * 删除【请填写功能名称】对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteOrdOrderByIds(String ids)
    {
        return ordOrderMapper.deleteOrdOrderByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param id 【请填写功能名称】ID
     * @return 结果
     */
    @Override
    public int deleteOrdOrderById(Long id)
    {
        return ordOrderMapper.deleteOrdOrderById(id);
    }
}
