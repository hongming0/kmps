package com.ruoyi.kmps.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.kmps.mapper.OrdActivityPriceMapper;
import com.ruoyi.kmps.domain.OrdActivityPrice;
import com.ruoyi.kmps.service.IOrdActivityPriceService;
import com.ruoyi.common.core.text.Convert;

/**
 * 楼宇价格Service业务层处理
 * 
 * @author ruoyi
 * @date 2020-06-10
 */
@Service
public class OrdActivityPriceServiceImpl implements IOrdActivityPriceService 
{
    @Autowired
    private OrdActivityPriceMapper ordActivityPriceMapper;

    /**
     * 查询楼宇价格
     * 
     * @param id 楼宇价格ID
     * @return 楼宇价格
     */
    @Override
    public OrdActivityPrice selectOrdActivityPriceById(Long id)
    {
        return ordActivityPriceMapper.selectOrdActivityPriceById(id);
    }

    /**
     * 查询楼宇价格列表
     * 
     * @param ordActivityPrice 楼宇价格
     * @return 楼宇价格
     */
    @Override
    public List<OrdActivityPrice> selectOrdActivityPriceList(OrdActivityPrice ordActivityPrice)
    {
        return ordActivityPriceMapper.selectOrdActivityPriceList(ordActivityPrice);
    }

    /**
     * 新增楼宇价格
     * 
     * @param ordActivityPrice 楼宇价格
     * @return 结果
     */
    @Override
    public int insertOrdActivityPrice(OrdActivityPrice ordActivityPrice)
    {
        return ordActivityPriceMapper.insertOrdActivityPrice(ordActivityPrice);
    }

    /**
     * 修改楼宇价格
     * 
     * @param ordActivityPrice 楼宇价格
     * @return 结果
     */
    @Override
    public int updateOrdActivityPrice(OrdActivityPrice ordActivityPrice)
    {
        return ordActivityPriceMapper.updateOrdActivityPrice(ordActivityPrice);
    }

    /**
     * 删除楼宇价格对象
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
     * 删除楼宇价格信息
     * 
     * @param id 楼宇价格ID
     * @return 结果
     */
    @Override
    public int deleteOrdActivityPriceById(Long id)
    {
        return ordActivityPriceMapper.deleteOrdActivityPriceById(id);
    }
}
