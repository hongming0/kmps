package com.ruoyi.kmps.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.kmps.mapper.MebFinancelrdMapper;
import com.ruoyi.kmps.domain.MebFinancelrd;
import com.ruoyi.kmps.service.IMebFinancelrdService;
import com.ruoyi.common.core.text.Convert;

/**
 * 资金明细Service业务层处理
 * 
 * @author ruoyi
 * @date 2020-06-06
 */
@Service
public class MebFinancelrdServiceImpl implements IMebFinancelrdService 
{
    @Autowired
    private MebFinancelrdMapper mebFinancelrdMapper;

    /**
     * 查询资金明细
     * 
     * @param id 资金明细ID
     * @return 资金明细
     */
    @Override
    public MebFinancelrd selectMebFinancelrdById(Long id)
    {
        return mebFinancelrdMapper.selectMebFinancelrdById(id);
    }

    /**
     * 查询资金明细列表
     * 
     * @param mebFinancelrd 资金明细
     * @return 资金明细
     */
    @Override
    public List<MebFinancelrd> selectMebFinancelrdList(MebFinancelrd mebFinancelrd)
    {
        return mebFinancelrdMapper.selectMebFinancelrdList(mebFinancelrd);
    }

    /**
     * 新增资金明细
     * 
     * @param mebFinancelrd 资金明细
     * @return 结果
     */
    @Override
    public int insertMebFinancelrd(MebFinancelrd mebFinancelrd)
    {
        return mebFinancelrdMapper.insertMebFinancelrd(mebFinancelrd);
    }

    /**
     * 修改资金明细
     * 
     * @param mebFinancelrd 资金明细
     * @return 结果
     */
    @Override
    public int updateMebFinancelrd(MebFinancelrd mebFinancelrd)
    {
        return mebFinancelrdMapper.updateMebFinancelrd(mebFinancelrd);
    }

    /**
     * 删除资金明细对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteMebFinancelrdByIds(String ids)
    {
        return mebFinancelrdMapper.deleteMebFinancelrdByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除资金明细信息
     * 
     * @param id 资金明细ID
     * @return 结果
     */
    @Override
    public int deleteMebFinancelrdById(Long id)
    {
        return mebFinancelrdMapper.deleteMebFinancelrdById(id);
    }
}
