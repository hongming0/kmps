package com.ruoyi.kmps.service;

import java.util.List;
import com.ruoyi.kmps.domain.MebPointsrd;

/**
 * 积分明细Service接口
 * 
 * @author ruoyi
 * @date 2020-06-10
 */
public interface IMebPointsrdService 
{
    /**
     * 查询积分明细
     * 
     * @param id 积分明细ID
     * @return 积分明细
     */
    public MebPointsrd selectMebPointsrdById(Long id);

    /**
     * 查询积分明细列表
     * 
     * @param mebPointsrd 积分明细
     * @return 积分明细集合
     */
    public List<MebPointsrd> selectMebPointsrdList(MebPointsrd mebPointsrd);

    /**
     * 新增积分明细
     * 
     * @param mebPointsrd 积分明细
     * @return 结果
     */
    public int insertMebPointsrd(MebPointsrd mebPointsrd);

    /**
     * 修改积分明细
     * 
     * @param mebPointsrd 积分明细
     * @return 结果
     */
    public int updateMebPointsrd(MebPointsrd mebPointsrd);

    /**
     * 批量删除积分明细
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteMebPointsrdByIds(String ids);

    /**
     * 删除积分明细信息
     * 
     * @param id 积分明细ID
     * @return 结果
     */
    public int deleteMebPointsrdById(Long id);
}
