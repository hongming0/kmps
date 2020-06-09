package com.ruoyi.kmps.mapper;

import java.util.List;
import com.ruoyi.kmps.domain.MebOpinion;

/**
 * 投诉Mapper接口
 * 
 * @author ruoyi
 * @date 2020-06-08
 */
public interface MebOpinionMapper 
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
     * 删除投诉
     * 
     * @param id 投诉ID
     * @return 结果
     */
    public int deleteMebOpinionById(Long id);

    /**
     * 批量删除投诉
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteMebOpinionByIds(String[] ids);
}
