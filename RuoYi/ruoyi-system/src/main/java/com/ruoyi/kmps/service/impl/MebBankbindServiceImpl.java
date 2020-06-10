package com.ruoyi.kmps.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.kmps.mapper.MebBankbindMapper;
import com.ruoyi.kmps.domain.MebBankbind;
import com.ruoyi.kmps.service.IMebBankbindService;
import com.ruoyi.common.core.text.Convert;

/**
 * 绑定银行卡记录Service业务层处理
 * 
 * @author ruoyi
 * @date 2020-06-10
 */
@Service
public class MebBankbindServiceImpl implements IMebBankbindService 
{
    @Autowired
    private MebBankbindMapper mebBankbindMapper;

    /**
     * 查询绑定银行卡记录
     * 
     * @param id 绑定银行卡记录ID
     * @return 绑定银行卡记录
     */
    @Override
    public MebBankbind selectMebBankbindById(Long id)
    {
        return mebBankbindMapper.selectMebBankbindById(id);
    }

    /**
     * 查询绑定银行卡记录列表
     * 
     * @param mebBankbind 绑定银行卡记录
     * @return 绑定银行卡记录
     */
    @Override
    public List<MebBankbind> selectMebBankbindList(MebBankbind mebBankbind)
    {
        return mebBankbindMapper.selectMebBankbindList(mebBankbind);
    }

    /**
     * 新增绑定银行卡记录
     * 
     * @param mebBankbind 绑定银行卡记录
     * @return 结果
     */
    @Override
    public int insertMebBankbind(MebBankbind mebBankbind)
    {
        mebBankbind.setCreateTime(DateUtils.getNowDate());
        return mebBankbindMapper.insertMebBankbind(mebBankbind);
    }

    /**
     * 修改绑定银行卡记录
     * 
     * @param mebBankbind 绑定银行卡记录
     * @return 结果
     */
    @Override
    public int updateMebBankbind(MebBankbind mebBankbind)
    {
        mebBankbind.setUpdateTime(DateUtils.getNowDate());
        return mebBankbindMapper.updateMebBankbind(mebBankbind);
    }

    /**
     * 删除绑定银行卡记录对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteMebBankbindByIds(String ids)
    {
        return mebBankbindMapper.deleteMebBankbindByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除绑定银行卡记录信息
     * 
     * @param id 绑定银行卡记录ID
     * @return 结果
     */
    @Override
    public int deleteMebBankbindById(Long id)
    {
        return mebBankbindMapper.deleteMebBankbindById(id);
    }
}
