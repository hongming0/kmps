package com.ruoyi.kmps.service;

import java.util.List;
import com.ruoyi.kmps.domain.MebAddrlist;

/**
 * 会员地址列Service接口
 * 
 * @author ruoyi
 * @date 2020-06-10
 */
public interface IMebAddrlistService 
{
    /**
     * 查询会员地址列
     * 
     * @param id 会员地址列ID
     * @return 会员地址列
     */
    public MebAddrlist selectMebAddrlistById(Long id);

    /**
     * 查询会员地址列列表
     * 
     * @param mebAddrlist 会员地址列
     * @return 会员地址列集合
     */
    public List<MebAddrlist> selectMebAddrlistList(MebAddrlist mebAddrlist);

    /**
     * 新增会员地址列
     * 
     * @param mebAddrlist 会员地址列
     * @return 结果
     */
    public int insertMebAddrlist(MebAddrlist mebAddrlist);

    /**
     * 修改会员地址列
     * 
     * @param mebAddrlist 会员地址列
     * @return 结果
     */
    public int updateMebAddrlist(MebAddrlist mebAddrlist);

    /**
     * 批量删除会员地址列
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteMebAddrlistByIds(String ids);

    /**
     * 删除会员地址列信息
     * 
     * @param id 会员地址列ID
     * @return 结果
     */
    public int deleteMebAddrlistById(Long id);
}
