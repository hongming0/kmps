package com.ruoyi.kmps.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.kmps.mapper.MebAuthnameMapper;
import com.ruoyi.kmps.domain.MebAuthname;
import com.ruoyi.kmps.service.IMebAuthnameService;
import com.ruoyi.common.core.text.Convert;

/**
 * 会员实名认证记录Service业务层处理
 * 
 * @author ruoyi
 * @date 2020-06-06
 */
@Service
public class MebAuthnameServiceImpl implements IMebAuthnameService 
{
    @Autowired
    private MebAuthnameMapper mebAuthnameMapper;

    /**
     * 查询会员实名认证记录
     * 
     * @param id 会员实名认证记录ID
     * @return 会员实名认证记录
     */
    @Override
    public MebAuthname selectMebAuthnameById(Long id)
    {
        return mebAuthnameMapper.selectMebAuthnameById(id);
    }

    /**
     * 查询会员实名认证记录列表
     * 
     * @param mebAuthname 会员实名认证记录
     * @return 会员实名认证记录
     */
    @Override
    public List<MebAuthname> selectMebAuthnameList(MebAuthname mebAuthname)
    {
        return mebAuthnameMapper.selectMebAuthnameList(mebAuthname);
    }

    /**
     * 新增会员实名认证记录
     * 
     * @param mebAuthname 会员实名认证记录
     * @return 结果
     */
    @Override
    public int insertMebAuthname(MebAuthname mebAuthname)
    {
        return mebAuthnameMapper.insertMebAuthname(mebAuthname);
    }

    /**
     * 修改会员实名认证记录
     * 
     * @param mebAuthname 会员实名认证记录
     * @return 结果
     */
    @Override
    public int updateMebAuthname(MebAuthname mebAuthname)
    {
        return mebAuthnameMapper.updateMebAuthname(mebAuthname);
    }

    /**
     * 删除会员实名认证记录对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteMebAuthnameByIds(String ids)
    {
        return mebAuthnameMapper.deleteMebAuthnameByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除会员实名认证记录信息
     * 
     * @param id 会员实名认证记录ID
     * @return 结果
     */
    @Override
    public int deleteMebAuthnameById(Long id)
    {
        return mebAuthnameMapper.deleteMebAuthnameById(id);
    }
}
