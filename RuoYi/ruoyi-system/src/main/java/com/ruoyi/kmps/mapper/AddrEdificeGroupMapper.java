package com.ruoyi.kmps.mapper;

import java.util.List;
import com.ruoyi.kmps.domain.AddrEdificeGroup;

/**
 * 【请填写功能名称】Mapper接口
 * 
 * @author ruoyi
 * @date 2020-06-06
 */
public interface AddrEdificeGroupMapper 
{
    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    public AddrEdificeGroup selectAddrEdificeGroupById(Long id);

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param addrEdificeGroup 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<AddrEdificeGroup> selectAddrEdificeGroupList(AddrEdificeGroup addrEdificeGroup);

    /**
     * 新增【请填写功能名称】
     * 
     * @param addrEdificeGroup 【请填写功能名称】
     * @return 结果
     */
    public int insertAddrEdificeGroup(AddrEdificeGroup addrEdificeGroup);

    /**
     * 修改【请填写功能名称】
     * 
     * @param addrEdificeGroup 【请填写功能名称】
     * @return 结果
     */
    public int updateAddrEdificeGroup(AddrEdificeGroup addrEdificeGroup);

    /**
     * 删除【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 结果
     */
    public int deleteAddrEdificeGroupById(Long id);

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteAddrEdificeGroupByIds(String[] ids);
}
