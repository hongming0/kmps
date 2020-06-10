package com.ruoyi.kmps.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.kmps.mapper.MebLoginlogMapper;
import com.ruoyi.kmps.domain.MebLoginlog;
import com.ruoyi.kmps.service.IMebLoginlogService;
import com.ruoyi.common.core.text.Convert;

/**
 * 会员登录日志Service业务层处理
 * 
 * @author ruoyi
 * @date 2020-06-10
 */
@Service
public class MebLoginlogServiceImpl implements IMebLoginlogService 
{
    @Autowired
    private MebLoginlogMapper mebLoginlogMapper;

    /**
     * 查询会员登录日志
     * 
     * @param id 会员登录日志ID
     * @return 会员登录日志
     */
    @Override
    public MebLoginlog selectMebLoginlogById(Long id)
    {
        return mebLoginlogMapper.selectMebLoginlogById(id);
    }

    /**
     * 查询会员登录日志列表
     * 
     * @param mebLoginlog 会员登录日志
     * @return 会员登录日志
     */
    @Override
    public List<MebLoginlog> selectMebLoginlogList(MebLoginlog mebLoginlog)
    {
        return mebLoginlogMapper.selectMebLoginlogList(mebLoginlog);
    }

    /**
     * 新增会员登录日志
     * 
     * @param mebLoginlog 会员登录日志
     * @return 结果
     */
    @Override
    public int insertMebLoginlog(MebLoginlog mebLoginlog)
    {
        return mebLoginlogMapper.insertMebLoginlog(mebLoginlog);
    }

    /**
     * 修改会员登录日志
     * 
     * @param mebLoginlog 会员登录日志
     * @return 结果
     */
    @Override
    public int updateMebLoginlog(MebLoginlog mebLoginlog)
    {
        return mebLoginlogMapper.updateMebLoginlog(mebLoginlog);
    }

    /**
     * 删除会员登录日志对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteMebLoginlogByIds(String ids)
    {
        return mebLoginlogMapper.deleteMebLoginlogByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除会员登录日志信息
     * 
     * @param id 会员登录日志ID
     * @return 结果
     */
    @Override
    public int deleteMebLoginlogById(Long id)
    {
        return mebLoginlogMapper.deleteMebLoginlogById(id);
    }
}
