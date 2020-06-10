package com.ruoyi.kmps.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.kmps.mapper.MebAccountMapper;
import com.ruoyi.kmps.domain.MebAccount;
import com.ruoyi.kmps.service.IMebAccountService;
import com.ruoyi.common.core.text.Convert;

/**
 * 会员账号Service业务层处理
 * 
 * @author ruoyi
 * @date 2020-06-10
 */
@Service
public class MebAccountServiceImpl implements IMebAccountService 
{
    @Autowired
    private MebAccountMapper mebAccountMapper;

    /**
     * 查询会员账号
     * 
     * @param id 会员账号ID
     * @return 会员账号
     */
    @Override
    public MebAccount selectMebAccountById(Long id)
    {
        return mebAccountMapper.selectMebAccountById(id);
    }

    /**
     * 查询会员账号列表
     * 
     * @param mebAccount 会员账号
     * @return 会员账号
     */
    @Override
    public List<MebAccount> selectMebAccountList(MebAccount mebAccount)
    {
        return mebAccountMapper.selectMebAccountList(mebAccount);
    }

    /**
     * 新增会员账号
     * 
     * @param mebAccount 会员账号
     * @return 结果
     */
    @Override
    public int insertMebAccount(MebAccount mebAccount)
    {
        return mebAccountMapper.insertMebAccount(mebAccount);
    }

    /**
     * 修改会员账号
     * 
     * @param mebAccount 会员账号
     * @return 结果
     */
    @Override
    public int updateMebAccount(MebAccount mebAccount)
    {
        return mebAccountMapper.updateMebAccount(mebAccount);
    }

    /**
     * 删除会员账号对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteMebAccountByIds(String ids)
    {
        return mebAccountMapper.deleteMebAccountByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除会员账号信息
     * 
     * @param id 会员账号ID
     * @return 结果
     */
    @Override
    public int deleteMebAccountById(Long id)
    {
        return mebAccountMapper.deleteMebAccountById(id);
    }
}
