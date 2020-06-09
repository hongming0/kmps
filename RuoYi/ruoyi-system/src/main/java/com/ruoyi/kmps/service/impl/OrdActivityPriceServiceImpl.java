package com.ruoyi.kmps.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.kmps.mapper.OrdActivityPriceMapper;
import com.ruoyi.kmps.domain.OrdActivityPrice;
import com.ruoyi.kmps.service.IOrdActivityPriceService;
import com.ruoyi.common.core.text.Convert;

/**
 * 【请填写功能名称】Service业务层处理
 * 
 * @author ruoyi
 * @date 2020-06-06
 */
@Service
public class OrdActivityPriceServiceImpl implements IOrdActivityPriceService 
{
    @Autowired
    private OrdActivityPriceMapper ordActivityPriceMapper;

    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    @Override
    public OrdActivityPrice selectOrdActivityPriceById(Long id)
    {
        return ordActivityPriceMapper.selectOrdActivityPriceById(id);
    }

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param ordActivityPrice 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<OrdActivityPrice> selectOrdActivityPriceList(OrdActivityPrice ordActivityPrice)
    {
        return ordActivityPriceMapper.selectOrdActivityPriceList(ordActivityPrice);
    }

    /**
     * 新增【请填写功能名称】
     * 
     * @param ordActivityPrice 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertOrdActivityPrice(OrdActivityPrice ordActivityPrice)
    {
        return ordActivityPriceMapper.insertOrdActivityPrice(ordActivityPrice);
    }

    /**
     * 修改【请填写功能名称】
     * 
     * @param ordActivityPrice 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateOrdActivityPrice(OrdActivityPrice ordActivityPrice)
    {
        return ordActivityPriceMapper.updateOrdActivityPrice(ordActivityPrice);
    }

    /**
     * 删除【请填写功能名称】对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteOrdActivityPriceByIds(String ids)
    {
        return ordActivityPriceMapper.deleteOrdActivityPriceByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param id 【请填写功能名称】ID
     * @return 结果
     */
    @Override
    public int deleteOrdActivityPriceById(Long id)
    {
        return ordActivityPriceMapper.deleteOrdActivityPriceById(id);
    }
}
