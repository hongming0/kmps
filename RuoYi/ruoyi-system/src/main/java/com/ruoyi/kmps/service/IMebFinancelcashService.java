package com.ruoyi.kmps.service;

import java.util.List;
import com.ruoyi.kmps.domain.MebFinancelcash;

/**
 * 提现Service接口
 * 
 * @author ruoyi
 * @date 2020-06-10
 */
public interface IMebFinancelcashService 
{
    /**
     * 查询提现
     * 
     * @param id 提现ID
     * @return 提现
     */
    public MebFinancelcash selectMebFinancelcashById(Long id);

    /**
     * 查询提现列表
     * 
     * @param mebFinancelcash 提现
     * @return 提现集合
     */
    public List<MebFinancelcash> selectMebFinancelcashList(MebFinancelcash mebFinancelcash);

    /**
     * 新增提现
     * 
     * @param mebFinancelcash 提现
     * @return 结果
     */
    public int insertMebFinancelcash(MebFinancelcash mebFinancelcash);

    /**
     * 修改提现
     * 
     * @param mebFinancelcash 提现
     * @return 结果
     */
    public int updateMebFinancelcash(MebFinancelcash mebFinancelcash);

    /**
     * 批量删除提现
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteMebFinancelcashByIds(String ids);

    /**
     * 删除提现信息
     * 
     * @param id 提现ID
     * @return 结果
     */
    public int deleteMebFinancelcashById(Long id);
}
