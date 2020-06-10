package com.ruoyi.kmps.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.kmps.mapper.MebApplogMapper;
import com.ruoyi.kmps.domain.MebApplog;
import com.ruoyi.kmps.service.IMebApplogService;
import com.ruoyi.common.core.text.Convert;

/**
 * app机器关联记录Service业务层处理
 * 
 * @author ruoyi
 * @date 2020-06-10
 */
@Service
public class MebApplogServiceImpl implements IMebApplogService 
{
    @Autowired
    private MebApplogMapper mebApplogMapper;

    /**
     * 查询app机器关联记录
     * 
     * @param id app机器关联记录ID
     * @return app机器关联记录
     */
    @Override
    public MebApplog selectMebApplogById(Long id)
    {
        return mebApplogMapper.selectMebApplogById(id);
    }

    /**
     * 查询app机器关联记录列表
     * 
     * @param mebApplog app机器关联记录
     * @return app机器关联记录
     */
    @Override
    public List<MebApplog> selectMebApplogList(MebApplog mebApplog)
    {
        return mebApplogMapper.selectMebApplogList(mebApplog);
    }

    /**
     * 新增app机器关联记录
     * 
     * @param mebApplog app机器关联记录
     * @return 结果
     */
    @Override
    public int insertMebApplog(MebApplog mebApplog)
    {
        mebApplog.setCreateTime(DateUtils.getNowDate());
        return mebApplogMapper.insertMebApplog(mebApplog);
    }

    /**
     * 修改app机器关联记录
     * 
     * @param mebApplog app机器关联记录
     * @return 结果
     */
    @Override
    public int updateMebApplog(MebApplog mebApplog)
    {
        return mebApplogMapper.updateMebApplog(mebApplog);
    }

    /**
     * 删除app机器关联记录对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteMebApplogByIds(String ids)
    {
        return mebApplogMapper.deleteMebApplogByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除app机器关联记录信息
     * 
     * @param id app机器关联记录ID
     * @return 结果
     */
    @Override
    public int deleteMebApplogById(Long id)
    {
        return mebApplogMapper.deleteMebApplogById(id);
    }
}
