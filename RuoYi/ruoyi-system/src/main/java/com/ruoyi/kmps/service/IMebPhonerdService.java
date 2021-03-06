package com.ruoyi.kmps.service;

import java.util.List;
import com.ruoyi.kmps.domain.MebPhonerd;

/**
 * 手机号变更记录Service接口
 * 
 * @author ruoyi
 * @date 2020-06-10
 */
public interface IMebPhonerdService 
{
    /**
     * 查询手机号变更记录
     * 
     * @param id 手机号变更记录ID
     * @return 手机号变更记录
     */
    public MebPhonerd selectMebPhonerdById(Long id);

    /**
     * 查询手机号变更记录列表
     * 
     * @param mebPhonerd 手机号变更记录
     * @return 手机号变更记录集合
     */
    public List<MebPhonerd> selectMebPhonerdList(MebPhonerd mebPhonerd);

    /**
     * 新增手机号变更记录
     * 
     * @param mebPhonerd 手机号变更记录
     * @return 结果
     */
    public int insertMebPhonerd(MebPhonerd mebPhonerd);

    /**
     * 修改手机号变更记录
     * 
     * @param mebPhonerd 手机号变更记录
     * @return 结果
     */
    public int updateMebPhonerd(MebPhonerd mebPhonerd);

    /**
     * 批量删除手机号变更记录
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteMebPhonerdByIds(String ids);

    /**
     * 删除手机号变更记录信息
     * 
     * @param id 手机号变更记录ID
     * @return 结果
     */
    public int deleteMebPhonerdById(Long id);
}
