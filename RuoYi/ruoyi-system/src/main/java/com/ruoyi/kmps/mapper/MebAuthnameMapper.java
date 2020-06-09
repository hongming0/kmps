package com.ruoyi.kmps.mapper;

import java.util.List;
import com.ruoyi.kmps.domain.MebAuthname;

/**
 * 会员实名认证记录Mapper接口
 * 
 * @author ruoyi
 * @date 2020-06-06
 */
public interface MebAuthnameMapper 
{
    /**
     * 查询会员实名认证记录
     * 
     * @param id 会员实名认证记录ID
     * @return 会员实名认证记录
     */
    public MebAuthname selectMebAuthnameById(Long id);

    /**
     * 查询会员实名认证记录列表
     * 
     * @param mebAuthname 会员实名认证记录
     * @return 会员实名认证记录集合
     */
    public List<MebAuthname> selectMebAuthnameList(MebAuthname mebAuthname);

    /**
     * 新增会员实名认证记录
     * 
     * @param mebAuthname 会员实名认证记录
     * @return 结果
     */
    public int insertMebAuthname(MebAuthname mebAuthname);

    /**
     * 修改会员实名认证记录
     * 
     * @param mebAuthname 会员实名认证记录
     * @return 结果
     */
    public int updateMebAuthname(MebAuthname mebAuthname);

    /**
     * 删除会员实名认证记录
     * 
     * @param id 会员实名认证记录ID
     * @return 结果
     */
    public int deleteMebAuthnameById(Long id);

    /**
     * 批量删除会员实名认证记录
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteMebAuthnameByIds(String[] ids);
}
