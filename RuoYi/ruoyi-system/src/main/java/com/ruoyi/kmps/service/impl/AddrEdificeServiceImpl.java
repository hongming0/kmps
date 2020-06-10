package com.ruoyi.kmps.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.kmps.mapper.AddrEdificeMapper;
import com.ruoyi.kmps.domain.AddrEdifice;
import com.ruoyi.kmps.service.IAddrEdificeService;
import com.ruoyi.common.core.text.Convert;

/**
 * 楼宇Service业务层处理
 * 
 * @author ruoyi
 * @date 2020-06-10
 */
@Service
public class AddrEdificeServiceImpl implements IAddrEdificeService 
{
    @Autowired
    private AddrEdificeMapper addrEdificeMapper;

    /**
     * 查询楼宇
     * 
     * @param id 楼宇ID
     * @return 楼宇
     */
    @Override
    public AddrEdifice selectAddrEdificeById(Long id)
    {
        return addrEdificeMapper.selectAddrEdificeById(id);
    }

    /**
     * 查询楼宇列表
     * 
     * @param addrEdifice 楼宇
     * @return 楼宇
     */
    @Override
    public List<AddrEdifice> selectAddrEdificeList(AddrEdifice addrEdifice)
    {
        return addrEdificeMapper.selectAddrEdificeList(addrEdifice);
    }

    /**
     * 新增楼宇
     * 
     * @param addrEdifice 楼宇
     * @return 结果
     */
    @Override
    public int insertAddrEdifice(AddrEdifice addrEdifice)
    {
        return addrEdificeMapper.insertAddrEdifice(addrEdifice);
    }

    /**
     * 修改楼宇
     * 
     * @param addrEdifice 楼宇
     * @return 结果
     */
    @Override
    public int updateAddrEdifice(AddrEdifice addrEdifice)
    {
        return addrEdificeMapper.updateAddrEdifice(addrEdifice);
    }

    /**
     * 删除楼宇对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteAddrEdificeByIds(String ids)
    {
        return addrEdificeMapper.deleteAddrEdificeByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除楼宇信息
     * 
     * @param id 楼宇ID
     * @return 结果
     */
    @Override
    public int deleteAddrEdificeById(Long id)
    {
        return addrEdificeMapper.deleteAddrEdificeById(id);
    }
}
