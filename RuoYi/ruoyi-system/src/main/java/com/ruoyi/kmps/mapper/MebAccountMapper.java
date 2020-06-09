package com.ruoyi.kmps.mapper;

import java.util.List;
import com.ruoyi.kmps.domain.MebAccount;

/**
 * 会员账号Mapper接口
 * 
 * @author ruoyi
 * @date 2020-06-06
 */
public interface MebAccountMapper 
{
    /**
     * 查询会员账号
     * 
     * @param id 会员账号ID
     * @return 会员账号
     */
    public MebAccount selectMebAccountById(Long id);

    /**
     * 查询会员账号列表
     * 
     * @param mebAccount 会员账号
     * @return 会员账号集合
     */
    public List<MebAccount> selectMebAccountList(MebAccount mebAccount);

    /**
     * 新增会员账号
     * 
     * @param mebAccount 会员账号
     * @return 结果
     */
    public int insertMebAccount(MebAccount mebAccount);

    /**
     * 修改会员账号
     * 
     * @param mebAccount 会员账号
     * @return 结果
     */
    public int updateMebAccount(MebAccount mebAccount);

    /**
     * 删除会员账号
     * 
     * @param id 会员账号ID
     * @return 结果
     */
    public int deleteMebAccountById(Long id);

    /**
     * 批量删除会员账号
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteMebAccountByIds(String[] ids);
}
