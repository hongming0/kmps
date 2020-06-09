package com.ruoyi.kmps.service;

import java.util.List;
import com.ruoyi.kmps.domain.MebSiginIn;

/**
 * 【请填写功能名称】Service接口
 * 
 * @author ruoyi
 * @date 2020-06-06
 */
public interface IMebSiginInService 
{
    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    public MebSiginIn selectMebSiginInById(Long id);

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param mebSiginIn 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<MebSiginIn> selectMebSiginInList(MebSiginIn mebSiginIn);

    /**
     * 新增【请填写功能名称】
     * 
     * @param mebSiginIn 【请填写功能名称】
     * @return 结果
     */
    public int insertMebSiginIn(MebSiginIn mebSiginIn);

    /**
     * 修改【请填写功能名称】
     * 
     * @param mebSiginIn 【请填写功能名称】
     * @return 结果
     */
    public int updateMebSiginIn(MebSiginIn mebSiginIn);

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteMebSiginInByIds(String ids);

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param id 【请填写功能名称】ID
     * @return 结果
     */
    public int deleteMebSiginInById(Long id);
}
