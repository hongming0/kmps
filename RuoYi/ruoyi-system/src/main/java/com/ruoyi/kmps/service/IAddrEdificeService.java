package com.ruoyi.kmps.service;

import java.util.List;
import com.ruoyi.kmps.domain.AddrEdifice;

/**
 * 楼宇Service接口
 * 
 * @author ruoyi
 * @date 2020-06-10
 */
public interface IAddrEdificeService 
{
    /**
     * 查询楼宇
     * 
     * @param id 楼宇ID
     * @return 楼宇
     */
    public AddrEdifice selectAddrEdificeById(Long id);

    /**
     * 查询楼宇列表
     * 
     * @param addrEdifice 楼宇
     * @return 楼宇集合
     */
    public List<AddrEdifice> selectAddrEdificeList(AddrEdifice addrEdifice);

    /**
     * 新增楼宇
     * 
     * @param addrEdifice 楼宇
     * @return 结果
     */
    public int insertAddrEdifice(AddrEdifice addrEdifice);

    /**
     * 修改楼宇
     * 
     * @param addrEdifice 楼宇
     * @return 结果
     */
    public int updateAddrEdifice(AddrEdifice addrEdifice);

    /**
     * 批量删除楼宇
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteAddrEdificeByIds(String ids);

    /**
     * 删除楼宇信息
     * 
     * @param id 楼宇ID
     * @return 结果
     */
    public int deleteAddrEdificeById(Long id);
}
