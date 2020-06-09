package com.ruoyi.kmps.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 会员推荐对象 meb_friend
 * 
 * @author ruoyi
 * @date 2020-06-06
 */
public class MebFriend extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 编号 */
    private Long id;

    /** 推荐人 */
    @Excel(name = "推荐人")
    private Long pid;

    /** 被推荐会员 */
    @Excel(name = "被推荐会员")
    private Long bid;

    /** 使用状态 */
    @Excel(name = "使用状态")
    private Integer status;

    private Long createtime;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setPid(Long pid) 
    {
        this.pid = pid;
    }

    public Long getPid() 
    {
        return pid;
    }
    public void setBid(Long bid) 
    {
        this.bid = bid;
    }

    public Long getBid() 
    {
        return bid;
    }
    public void setStatus(Integer status) 
    {
        this.status = status;
    }

    public Integer getStatus() 
    {
        return status;
    }

    public void setCreatetime(Long createtime) {
        this.createtime = createtime;
    }

    public Long getCreatetime() {
        return createtime;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("pid", getPid())
            .append("bid", getBid())
            //.append("createtime", getCreatetime())
            .append("status", getStatus())
            .toString();
    }
}
