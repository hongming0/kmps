package com.ruoyi.kmps.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.kmps.mapper.MebFinancelcashMapper;
import com.ruoyi.kmps.domain.MebFinancelcash;
import com.ruoyi.kmps.service.IMebFinancelcashService;
import com.ruoyi.common.core.text.Convert;

/**
 * 提现Service业务层处理
 * 
 * @author ruoyi
 * @date 2020-06-06
 */
@Service
public class MebFinancelcashServiceImpl implements IMebFinancelcashService 
{
    @Autowired
    private MebFinancelcashMapper mebFinancelcashMapper;

    /**
     * 查询提现
     * 
     * @param id 提现ID
     * @return 提现
     */
    @Override
    public MebFinancelcash selectMebFinancelcashById(Long id)
    {
        return mebFinancelcashMapper.selectMebFinancelcashById(id);
    }

    /**
     * 查询提现列表
     * 
     * @param mebFinancelcash 提现
     * @return 提现
     */
    @Override
    public List<MebFinancelcash> selectMebFinancelcashList(MebFinancelcash mebFinancelcash)
    {
        return mebFinancelcashMapper.selectMebFinancelcashList(mebFinancelcash);
    }

    /**
     * 新增提现
     * 
     * @param mebFinancelcash 提现
     * @return 结果
     */
    @Override
    public int insertMebFinancelcash(MebFinancelcash mebFinancelcash)
    {
        return mebFinancelcashMapper.insertMebFinancelcash(mebFinancelcash);
    }

    /**
     * 修改提现
     * 
     * @param mebFinancelcash 提现
     * @return 结果
     */
    @Override
    public int updateMebFinancelcash(MebFinancelcash mebFinancelcash)
    {
        return mebFinancelcashMapper.updateMebFinancelcash(mebFinancelcash);
    }

    /**
     * 删除提现对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteMebFinancelcashByIds(String ids)
    {
        return mebFinancelcashMapper.deleteMebFinancelcashByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除提现信息
     * 
     * @param id 提现ID
     * @return 结果
     */
    @Override
    public int deleteMebFinancelcashById(Long id)
    {
        return mebFinancelcashMapper.deleteMebFinancelcashById(id);
    }
}
