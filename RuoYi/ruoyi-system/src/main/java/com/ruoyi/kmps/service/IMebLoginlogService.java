package com.ruoyi.kmps.service;

import java.util.List;
import com.ruoyi.kmps.domain.MebLoginlog;

/**
 * 会员登录日志Service接口
 * 
 * @author ruoyi
 * @date 2020-06-06
 */
public interface IMebLoginlogService 
{
    /**
     * 查询会员登录日志
     * 
     * @param id 会员登录日志ID
     * @return 会员登录日志
     */
    public MebLoginlog selectMebLoginlogById(Long id);

    /**
     * 查询会员登录日志列表
     * 
     * @param mebLoginlog 会员登录日志
     * @return 会员登录日志集合
     */
    public List<MebLoginlog> selectMebLoginlogList(MebLoginlog mebLoginlog);

    /**
     * 新增会员登录日志
     * 
     * @param mebLoginlog 会员登录日志
     * @return 结果
     */
    public int insertMebLoginlog(MebLoginlog mebLoginlog);

    /**
     * 修改会员登录日志
     * 
     * @param mebLoginlog 会员登录日志
     * @return 结果
     */
    public int updateMebLoginlog(MebLoginlog mebLoginlog);

    /**
     * 批量删除会员登录日志
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteMebLoginlogByIds(String ids);

    /**
     * 删除会员登录日志信息
     * 
     * @param id 会员登录日志ID
     * @return 结果
     */
    public int deleteMebLoginlogById(Long id);
}
