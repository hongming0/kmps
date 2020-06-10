package com.ruoyi.kmps.service;

import java.util.List;
import com.ruoyi.kmps.domain.MebVacation;

/**
 * 会员休假Service接口
 * 
 * @author ruoyi
 * @date 2020-06-10
 */
public interface IMebVacationService 
{
    /**
     * 查询会员休假
     * 
     * @param id 会员休假ID
     * @return 会员休假
     */
    public MebVacation selectMebVacationById(Long id);

    /**
     * 查询会员休假列表
     * 
     * @param mebVacation 会员休假
     * @return 会员休假集合
     */
    public List<MebVacation> selectMebVacationList(MebVacation mebVacation);

    /**
     * 新增会员休假
     * 
     * @param mebVacation 会员休假
     * @return 结果
     */
    public int insertMebVacation(MebVacation mebVacation);

    /**
     * 修改会员休假
     * 
     * @param mebVacation 会员休假
     * @return 结果
     */
    public int updateMebVacation(MebVacation mebVacation);

    /**
     * 批量删除会员休假
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteMebVacationByIds(String ids);

    /**
     * 删除会员休假信息
     * 
     * @param id 会员休假ID
     * @return 结果
     */
    public int deleteMebVacationById(Long id);
}
