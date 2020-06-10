package com.ruoyi.kmps.domain;

import java.util.Date;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * app机器关联记录对象 meb_applog
 * 
 * @author ruoyi
 * @date 2020-06-10
 */
public class MebApplog extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 编号 */
    private Long id;

    /** 机器码 */
    @Excel(name = "机器码")
    private String channelid;

    /** 客户端 */
    @Excel(name = "客户端")
    private Integer client;

    /** app版本号 */
    @Excel(name = "app版本号")
    private String appversion;

    /** 登录时间 */
    @Excel(name = "登录时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date loginTime;

    /** 登录成功时的token */
    @Excel(name = "登录成功时的token")
    private String token;

    /** 会员ID */
    @Excel(name = "会员ID")
    private Long mebid;

    /** 状态 */
    @Excel(name = "状态")
    private Integer logsta;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setChannelid(String channelid) 
    {
        this.channelid = channelid;
    }

    public String getChannelid() 
    {
        return channelid;
    }
    public void setClient(Integer client) 
    {
        this.client = client;
    }

    public Integer getClient() 
    {
        return client;
    }
    public void setAppversion(String appversion) 
    {
        this.appversion = appversion;
    }

    public String getAppversion() 
    {
        return appversion;
    }
    public void setLoginTime(Date loginTime) 
    {
        this.loginTime = loginTime;
    }

    public Date getLoginTime() 
    {
        return loginTime;
    }
    public void setToken(String token) 
    {
        this.token = token;
    }

    public String getToken() 
    {
        return token;
    }
    public void setMebid(Long mebid) 
    {
        this.mebid = mebid;
    }

    public Long getMebid() 
    {
        return mebid;
    }
    public void setLogsta(Integer logsta) 
    {
        this.logsta = logsta;
    }

    public Integer getLogsta() 
    {
        return logsta;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("channelid", getChannelid())
            .append("client", getClient())
            .append("appversion", getAppversion())
            .append("createTime", getCreateTime())
            .append("loginTime", getLoginTime())
            .append("token", getToken())
            .append("mebid", getMebid())
            .append("logsta", getLogsta())
            .toString();
    }
}
