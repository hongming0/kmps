package com.ruoyi.kmps.service;

import java.util.List;
import com.ruoyi.kmps.domain.AddrEdifice;

/**
 * 【请填写功能名称】Service接口
 * 
 * @author ruoyi
 * @date 2020-06-06
 */
public interface IAddrEdificeService 
{
    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    public AddrEdifice selectAddrEdificeById(Long id);

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param addrEdifice 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<AddrEdifice> selectAddrEdificeList(AddrEdifice addrEdifice);

    /**
     * 新增【请填写功能名称】
     * 
     * @param addrEdifice 【请填写功能名称】
     * @return 结果
     */
    public int insertAddrEdifice(AddrEdifice addrEdifice);

    /**
     * 修改【请填写功能名称】
     * 
     * @param addrEdifice 【请填写功能名称】
     * @return 结果
     */
    public int updateAddrEdifice(AddrEdifice addrEdifice);

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteAddrEdificeByIds(String ids);

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param id 【请填写功能名称】ID
     * @return 结果
     */
    public int deleteAddrEdificeById(Long id);
}
