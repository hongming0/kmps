package com.ruoyi.kmps.service;

import java.util.List;
import com.ruoyi.kmps.domain.MebAccthird;

/**
 * 第三方账号Service接口
 * 
 * @author ruoyi
 * @date 2020-06-06
 */
public interface IMebAccthirdService 
{
    /**
     * 查询第三方账号
     * 
     * @param id 第三方账号ID
     * @return 第三方账号
     */
    public MebAccthird selectMebAccthirdById(Long id);

    /**
     * 查询第三方账号列表
     * 
     * @param mebAccthird 第三方账号
     * @return 第三方账号集合
     */
    public List<MebAccthird> selectMebAccthirdList(MebAccthird mebAccthird);

    /**
     * 新增第三方账号
     * 
     * @param mebAccthird 第三方账号
     * @return 结果
     */
    public int insertMebAccthird(MebAccthird mebAccthird);

    /**
     * 修改第三方账号
     * 
     * @param mebAccthird 第三方账号
     * @return 结果
     */
    public int updateMebAccthird(MebAccthird mebAccthird);

    /**
     * 批量删除第三方账号
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteMebAccthirdByIds(String ids);

    /**
     * 删除第三方账号信息
     * 
     * @param id 第三方账号ID
     * @return 结果
     */
    public int deleteMebAccthirdById(Long id);
}
