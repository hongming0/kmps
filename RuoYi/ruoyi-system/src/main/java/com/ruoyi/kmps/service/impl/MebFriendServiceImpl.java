package com.ruoyi.kmps.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.kmps.mapper.MebFriendMapper;
import com.ruoyi.kmps.domain.MebFriend;
import com.ruoyi.kmps.service.IMebFriendService;
import com.ruoyi.common.core.text.Convert;

/**
 * 会员推荐Service业务层处理
 * 
 * @author ruoyi
 * @date 2020-06-06
 */
@Service
public class MebFriendServiceImpl implements IMebFriendService 
{
    @Autowired
    private MebFriendMapper mebFriendMapper;

    /**
     * 查询会员推荐
     * 
     * @param id 会员推荐ID
     * @return 会员推荐
     */
    @Override
    public MebFriend selectMebFriendById(Long id)
    {
        return mebFriendMapper.selectMebFriendById(id);
    }

    /**
     * 查询会员推荐列表
     * 
     * @param mebFriend 会员推荐
     * @return 会员推荐
     */
    @Override
    public List<MebFriend> selectMebFriendList(MebFriend mebFriend)
    {
        return mebFriendMapper.selectMebFriendList(mebFriend);
    }

    /**
     * 新增会员推荐
     * 
     * @param mebFriend 会员推荐
     * @return 结果
     */
    @Override
    public int insertMebFriend(MebFriend mebFriend)
    {
        return mebFriendMapper.insertMebFriend(mebFriend);
    }

    /**
     * 修改会员推荐
     * 
     * @param mebFriend 会员推荐
     * @return 结果
     */
    @Override
    public int updateMebFriend(MebFriend mebFriend)
    {
        return mebFriendMapper.updateMebFriend(mebFriend);
    }

    /**
     * 删除会员推荐对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteMebFriendByIds(String ids)
    {
        return mebFriendMapper.deleteMebFriendByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除会员推荐信息
     * 
     * @param id 会员推荐ID
     * @return 结果
     */
    @Override
    public int deleteMebFriendById(Long id)
    {
        return mebFriendMapper.deleteMebFriendById(id);
    }
}
