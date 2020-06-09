package com.ruoyi.kmps.service;

import java.util.List;
import com.ruoyi.kmps.domain.MebVacation;

/**
 * 【请填写功能名称】Service接口
 * 
 * @author ruoyi
 * @date 2020-06-06
 */
public interface IMebVacationService 
{
    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    public MebVacation selectMebVacationById(Long id);

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param mebVacation 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<MebVacation> selectMebVacationList(MebVacation mebVacation);

    /**
     * 新增【请填写功能名称】
     * 
     * @param mebVacation 【请填写功能名称】
     * @return 结果
     */
    public int insertMebVacation(MebVacation mebVacation);

    /**
     * 修改【请填写功能名称】
     * 
     * @param mebVacation 【请填写功能名称】
     * @return 结果
     */
    public int updateMebVacation(MebVacation mebVacation);

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteMebVacationByIds(String ids);

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param id 【请填写功能名称】ID
     * @return 结果
     */
    public int deleteMebVacationById(Long id);
}
