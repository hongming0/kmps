package com.ruoyi.kmps.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.kmps.mapper.AddrEdificeGroupMapper;
import com.ruoyi.kmps.domain.AddrEdificeGroup;
import com.ruoyi.kmps.service.IAddrEdificeGroupService;
import com.ruoyi.common.core.text.Convert;

/**
 * 分组Service业务层处理
 * 
 * @author ruoyi
 * @date 2020-06-10
 */
@Service
public class AddrEdificeGroupServiceImpl implements IAddrEdificeGroupService 
{
    @Autowired
    private AddrEdificeGroupMapper addrEdificeGroupMapper;

    /**
     * 查询分组
     * 
     * @param id 分组ID
     * @return 分组
     */
    @Override
    public AddrEdificeGroup selectAddrEdificeGroupById(Long id)
    {
        return addrEdificeGroupMapper.selectAddrEdificeGroupById(id);
    }

    /**
     * 查询分组列表
     * 
     * @param addrEdificeGroup 分组
     * @return 分组
     */
    @Override
    public List<AddrEdificeGroup> selectAddrEdificeGroupList(AddrEdificeGroup addrEdificeGroup)
    {
        return addrEdificeGroupMapper.selectAddrEdificeGroupList(addrEdificeGroup);
    }

    /**
     * 新增分组
     * 
     * @param addrEdificeGroup 分组
     * @return 结果
     */
    @Override
    public int insertAddrEdificeGroup(AddrEdificeGroup addrEdificeGroup)
    {
        addrEdificeGroup.setCreateTime(DateUtils.getNowDate());
        return addrEdificeGroupMapper.insertAddrEdificeGroup(addrEdificeGroup);
    }

    /**
     * 修改分组
     * 
     * @param addrEdificeGroup 分组
     * @return 结果
     */
    @Override
    public int updateAddrEdificeGroup(AddrEdificeGroup addrEdificeGroup)
    {
        return addrEdificeGroupMapper.updateAddrEdificeGroup(addrEdificeGroup);
    }

    /**
     * 删除分组对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteAddrEdificeGroupByIds(String ids)
    {
        return addrEdificeGroupMapper.deleteAddrEdificeGroupByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除分组信息
     * 
     * @param id 分组ID
     * @return 结果
     */
    @Override
    public int deleteAddrEdificeGroupById(Long id)
    {
        return addrEdificeGroupMapper.deleteAddrEdificeGroupById(id);
    }
}
