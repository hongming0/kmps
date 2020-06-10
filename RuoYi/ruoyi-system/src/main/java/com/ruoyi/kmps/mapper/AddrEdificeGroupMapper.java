package com.ruoyi.kmps.mapper;

import java.util.List;
import com.ruoyi.kmps.domain.AddrEdificeGroup;

/**
 * 分组Mapper接口
 * 
 * @author ruoyi
 * @date 2020-06-10
 */
public interface AddrEdificeGroupMapper 
{
    /**
     * 查询分组
     * 
     * @param id 分组ID
     * @return 分组
     */
    public AddrEdificeGroup selectAddrEdificeGroupById(Long id);

    /**
     * 查询分组列表
     * 
     * @param addrEdificeGroup 分组
     * @return 分组集合
     */
    public List<AddrEdificeGroup> selectAddrEdificeGroupList(AddrEdificeGroup addrEdificeGroup);

    /**
     * 新增分组
     * 
     * @param addrEdificeGroup 分组
     * @return 结果
     */
    public int insertAddrEdificeGroup(AddrEdificeGroup addrEdificeGroup);

    /**
     * 修改分组
     * 
     * @param addrEdificeGroup 分组
     * @return 结果
     */
    public int updateAddrEdificeGroup(AddrEdificeGroup addrEdificeGroup);

    /**
     * 删除分组
     * 
     * @param id 分组ID
     * @return 结果
     */
    public int deleteAddrEdificeGroupById(Long id);

    /**
     * 批量删除分组
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteAddrEdificeGroupByIds(String[] ids);
}
