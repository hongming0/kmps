package com.ruoyi.kmps.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 会员详细信息对象 meb_info
 * 
 * @author ruoyi
 * @date 2020-06-06
 */
public class MebInfo extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 编号 */
    private Long id;

    /** 平台用户id */
    @Excel(name = "平台用户id")
    private Long mebid;

    /** 会员身份 */
    @Excel(name = "会员身份")
    private Integer mebidty;

    /** 昵称 */
    @Excel(name = "昵称")
    private String nickname;

    /** 头像 */
    @Excel(name = "头像")
    private String avatar;

    /** 性别 */
    @Excel(name = "性别")
    private String sex;

    /** 出生日期 */
    @Excel(name = "出生日期")
    private String birthday;

    /** 是否通过实名认证 */
    @Excel(name = "是否通过实名认证")
    private Integer isauthper;

    /** 实名认证时间 */
    @Excel(name = "实名认证时间")
    private Long authpertime;

    /** 真实姓名 */
    @Excel(name = "真实姓名")
    private String pername;

    /** 会员等级 */
    @Excel(name = "会员等级")
    private Integer level;

    /** 扩展信息 */
    @Excel(name = "扩展信息")
    private String extjson;

    /** 微信账号 */
    @Excel(name = "微信账号")
    private String wxAccount;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setMebid(Long mebid) 
    {
        this.mebid = mebid;
    }

    public Long getMebid() 
    {
        return mebid;
    }
    public void setMebidty(Integer mebidty) 
    {
        this.mebidty = mebidty;
    }

    public Integer getMebidty() 
    {
        return mebidty;
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
    public void setSex(String sex) 
    {
        this.sex = sex;
    }

    public String getSex() 
    {
        return sex;
    }
    public void setBirthday(String birthday) 
    {
        this.birthday = birthday;
    }

    public String getBirthday() 
    {
        return birthday;
    }
    public void setIsauthper(Integer isauthper) 
    {
        this.isauthper = isauthper;
    }

    public Integer getIsauthper() 
    {
        return isauthper;
    }
    public void setAuthpertime(Long authpertime) 
    {
        this.authpertime = authpertime;
    }

    public Long getAuthpertime() 
    {
        return authpertime;
    }
    public void setPername(String pername) 
    {
        this.pername = pername;
    }

    public String getPername() 
    {
        return pername;
    }
    public void setLevel(Integer level) 
    {
        this.level = level;
    }

    public Integer getLevel() 
    {
        return level;
    }
    public void setExtjson(String extjson) 
    {
        this.extjson = extjson;
    }

    public String getExtjson() 
    {
        return extjson;
    }
    public void setWxAccount(String wxAccount) 
    {
        this.wxAccount = wxAccount;
    }

    public String getWxAccount() 
    {
        return wxAccount;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("mebid", getMebid())
            .append("mebidty", getMebidty())
            .append("nickname", getNickname())
            .append("avatar", getAvatar())
            .append("sex", getSex())
            .append("birthday", getBirthday())
            .append("isauthper", getIsauthper())
            .append("authpertime", getAuthpertime())
            .append("pername", getPername())
            .append("level", getLevel())
            .append("remark", getRemark())
            .append("extjson", getExtjson())
            .append("wxAccount", getWxAccount())
            .toString();
    }
}
