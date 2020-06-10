package com.ruoyi.kmps.service;

import java.util.List;
import com.ruoyi.kmps.domain.MebOpinion;

/**
 * 投诉Service接口
 * 
 * @author ruoyi
 * @date 2020-06-10
 */
public interface IMebOpinionService 
{
    /**
     * 查询投诉
     * 
     * @param id 投诉ID
     * @return 投诉
     */
    public MebOpinion selectMebOpinionById(Long id);

    /**
     * 查询投诉列表
     * 
     * @param mebOpinion 投诉
     * @return 投诉集合
     */
    public List<MebOpinion> selectMebOpinionList(MebOpinion mebOpinion);

    /**
     * 新增投诉
     * 
     * @param mebOpinion 投诉
     * @return 结果
     */
    public int insertMebOpinion(MebOpinion mebOpinion);

    /**
     * 修改投诉
     * 
     * @param mebOpinion 投诉
     * @return 结果
     */
    public int updateMebOpinion(MebOpinion mebOpinion);

    /**
     * 批量删除投诉
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteMebOpinionByIds(String ids);

    /**
     * 删除投诉信息
     * 
     * @param id 投诉ID
     * @return 结果
     */
    public int deleteMebOpinionById(Long id);
}
