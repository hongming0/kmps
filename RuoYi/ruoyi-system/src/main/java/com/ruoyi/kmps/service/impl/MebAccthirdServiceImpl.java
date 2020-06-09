package com.ruoyi.kmps.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.kmps.mapper.MebAccthirdMapper;
import com.ruoyi.kmps.domain.MebAccthird;
import com.ruoyi.kmps.service.IMebAccthirdService;
import com.ruoyi.common.core.text.Convert;

/**
 * 第三方账号Service业务层处理
 * 
 * @author ruoyi
 * @date 2020-06-06
 */
@Service
public class MebAccthirdServiceImpl implements IMebAccthirdService 
{
    @Autowired
    private MebAccthirdMapper mebAccthirdMapper;

    /**
     * 查询第三方账号
     * 
     * @param id 第三方账号ID
     * @return 第三方账号
     */
    @Override
    public MebAccthird selectMebAccthirdById(Long id)
    {
        return mebAccthirdMapper.selectMebAccthirdById(id);
    }

    /**
     * 查询第三方账号列表
     * 
     * @param mebAccthird 第三方账号
     * @return 第三方账号
     */
    @Override
    public List<MebAccthird> selectMebAccthirdList(MebAccthird mebAccthird)
    {
        return mebAccthirdMapper.selectMebAccthirdList(mebAccthird);
    }

    /**
     * 新增第三方账号
     * 
     * @param mebAccthird 第三方账号
     * @return 结果
     */
    @Override
    public int insertMebAccthird(MebAccthird mebAccthird)
    {
        return mebAccthirdMapper.insertMebAccthird(mebAccthird);
    }

    /**
     * 修改第三方账号
     * 
     * @param mebAccthird 第三方账号
     * @return 结果
     */
    @Override
    public int updateMebAccthird(MebAccthird mebAccthird)
    {
        return mebAccthirdMapper.updateMebAccthird(mebAccthird);
    }

    /**
     * 删除第三方账号对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteMebAccthirdByIds(String ids)
    {
        return mebAccthirdMapper.deleteMebAccthirdByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除第三方账号信息
     * 
     * @param id 第三方账号ID
     * @return 结果
     */
    @Override
    public int deleteMebAccthirdById(Long id)
    {
        return mebAccthirdMapper.deleteMebAccthirdById(id);
    }
}
