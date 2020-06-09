package com.ruoyi.kmps.service;

import java.util.List;
import com.ruoyi.kmps.domain.MebInfo;

/**
 * 会员详细信息Service接口
 * 
 * @author ruoyi
 * @date 2020-06-06
 */
public interface IMebInfoService 
{
    /**
     * 查询会员详细信息
     * 
     * @param id 会员详细信息ID
     * @return 会员详细信息
     */
    public MebInfo selectMebInfoById(Long id);

    /**
     * 查询会员详细信息列表
     * 
     * @param mebInfo 会员详细信息
     * @return 会员详细信息集合
     */
    public List<MebInfo> selectMebInfoList(MebInfo mebInfo);

    /**
     * 新增会员详细信息
     * 
     * @param mebInfo 会员详细信息
     * @return 结果
     */
    public int insertMebInfo(MebInfo mebInfo);

    /**
     * 修改会员详细信息
     * 
     * @param mebInfo 会员详细信息
     * @return 结果
     */
    public int updateMebInfo(MebInfo mebInfo);

    /**
     * 批量删除会员详细信息
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteMebInfoByIds(String ids);

    /**
     * 删除会员详细信息信息
     * 
     * @param id 会员详细信息ID
     * @return 结果
     */
    public int deleteMebInfoById(Long id);
}
