package com.ruoyi.kmps.service;

import java.util.List;
import com.ruoyi.kmps.domain.MebApplog;

/**
 * app机器关联记录Service接口
 * 
 * @author ruoyi
 * @date 2020-06-06
 */
public interface IMebApplogService 
{
    /**
     * 查询app机器关联记录
     * 
     * @param id app机器关联记录ID
     * @return app机器关联记录
     */
    public MebApplog selectMebApplogById(Long id);

    /**
     * 查询app机器关联记录列表
     * 
     * @param mebApplog app机器关联记录
     * @return app机器关联记录集合
     */
    public List<MebApplog> selectMebApplogList(MebApplog mebApplog);

    /**
     * 新增app机器关联记录
     * 
     * @param mebApplog app机器关联记录
     * @return 结果
     */
    public int insertMebApplog(MebApplog mebApplog);

    /**
     * 修改app机器关联记录
     * 
     * @param mebApplog app机器关联记录
     * @return 结果
     */
    public int updateMebApplog(MebApplog mebApplog);

    /**
     * 批量删除app机器关联记录
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteMebApplogByIds(String ids);

    /**
     * 删除app机器关联记录信息
     * 
     * @param id app机器关联记录ID
     * @return 结果
     */
    public int deleteMebApplogById(Long id);
}
