package com.ruoyi.kmps.service;

import java.util.List;
import com.ruoyi.kmps.domain.MebFriend;

/**
 * 会员推荐Service接口
 * 
 * @author ruoyi
 * @date 2020-06-10
 */
public interface IMebFriendService 
{
    /**
     * 查询会员推荐
     * 
     * @param id 会员推荐ID
     * @return 会员推荐
     */
    public MebFriend selectMebFriendById(Long id);

    /**
     * 查询会员推荐列表
     * 
     * @param mebFriend 会员推荐
     * @return 会员推荐集合
     */
    public List<MebFriend> selectMebFriendList(MebFriend mebFriend);

    /**
     * 新增会员推荐
     * 
     * @param mebFriend 会员推荐
     * @return 结果
     */
    public int insertMebFriend(MebFriend mebFriend);

    /**
     * 修改会员推荐
     * 
     * @param mebFriend 会员推荐
     * @return 结果
     */
    public int updateMebFriend(MebFriend mebFriend);

    /**
     * 批量删除会员推荐
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteMebFriendByIds(String ids);

    /**
     * 删除会员推荐信息
     * 
     * @param id 会员推荐ID
     * @return 结果
     */
    public int deleteMebFriendById(Long id);
}
