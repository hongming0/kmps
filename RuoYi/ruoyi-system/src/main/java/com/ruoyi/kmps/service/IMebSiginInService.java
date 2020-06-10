package com.ruoyi.kmps.service;

import java.util.List;
import com.ruoyi.kmps.domain.MebSiginIn;

/**
 * 会员打卡Service接口
 * 
 * @author ruoyi
 * @date 2020-06-10
 */
public interface IMebSiginInService 
{
    /**
     * 查询会员打卡
     * 
     * @param id 会员打卡ID
     * @return 会员打卡
     */
    public MebSiginIn selectMebSiginInById(Long id);

    /**
     * 查询会员打卡列表
     * 
     * @param mebSiginIn 会员打卡
     * @return 会员打卡集合
     */
    public List<MebSiginIn> selectMebSiginInList(MebSiginIn mebSiginIn);

    /**
     * 新增会员打卡
     * 
     * @param mebSiginIn 会员打卡
     * @return 结果
     */
    public int insertMebSiginIn(MebSiginIn mebSiginIn);

    /**
     * 修改会员打卡
     * 
     * @param mebSiginIn 会员打卡
     * @return 结果
     */
    public int updateMebSiginIn(MebSiginIn mebSiginIn);

    /**
     * 批量删除会员打卡
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteMebSiginInByIds(String ids);

    /**
     * 删除会员打卡信息
     * 
     * @param id 会员打卡ID
     * @return 结果
     */
    public int deleteMebSiginInById(Long id);
}
