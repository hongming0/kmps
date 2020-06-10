package com.ruoyi.kmps.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 第三方账号对象 meb_accthird
 * 
 * @author ruoyi
 * @date 2020-06-10
 */
public class MebAccthird extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 主键 */
    private Long id;

    /** 小程序返回的会话密钥 */
    @Excel(name = "小程序返回的会话密钥")
    private String sessionKey;

    /** 平台用户id */
    @Excel(name = "平台用户id")
    private Long mebid;

    /** 第三方平台 */
    @Excel(name = "第三方平台")
    private String openType;

    /** 用户在第三方平台的ID */
    @Excel(name = "用户在第三方平台的ID")
    private String openid;

    /** 第三方平台返回的token */
    @Excel(name = "第三方平台返回的token")
    private String accessToken;

    /** 授权时间 */
    @Excel(name = "授权时间")
    private String expiredTime;

    /** 昵称 */
    @Excel(name = "昵称")
    private String nickname;

    /** 头像 */
    @Excel(name = "头像")
    private String avatar;

    /** 用户在第三方平台的唯一ID */
    @Excel(name = "用户在第三方平台的唯一ID")
    private String uniqueid;

    /** 绑定状态 */
    @Excel(name = "绑定状态")
    private Integer acctsta;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setSessionKey(String sessionKey) 
    {
        this.sessionKey = sessionKey;
    }

    public String getSessionKey() 
    {
        return sessionKey;
    }
    public void setMebid(Long mebid) 
    {
        this.mebid = mebid;
    }

    public Long getMebid() 
    {
        return mebid;
    }
    public void setOpenType(String openType) 
    {
        this.openType = openType;
    }

    public String getOpenType() 
    {
        return openType;
    }
    public void setOpenid(String openid) 
    {
        this.openid = openid;
    }

    public String getOpenid() 
    {
        return openid;
    }
    public void setAccessToken(String accessToken) 
    {
        this.accessToken = accessToken;
    }

    public String getAccessToken() 
    {
        return accessToken;
    }
    public void setExpiredTime(String expiredTime) 
    {
        this.expiredTime = expiredTime;
    }

    public String getExpiredTime() 
    {
        return expiredTime;
    }
    public void setNickname(String nickname) 
    {
        this.nickname = nickname;
    }

    public String getNickname() 
    {
        return nickname;
    }
    public void setAvatar(String avatar) 
    {
        this.avatar = avatar;
    }

    public String getAvatar() 
    {
        return avatar;
    }
    public void setUniqueid(String uniqueid) 
    {
        this.uniqueid = uniqueid;
    }

    public String getUniqueid() 
    {
        return uniqueid;
    }
    public void setAcctsta(Integer acctsta) 
    {
        this.acctsta = acctsta;
    }

    public Integer getAcctsta() 
    {
        return acctsta;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("sessionKey", getSessionKey())
            .append("mebid", getMebid())
            .append("openType", getOpenType())
            .append("openid", getOpenid())
            .append("accessToken", getAccessToken())
            .append("expiredTime", getExpiredTime())
            .append("nickname", getNickname())
            .append("avatar", getAvatar())
            .append("createTime", getCreateTime())
            .append("uniqueid", getUniqueid())
            .append("acctsta", getAcctsta())
            .toString();
    }
}
