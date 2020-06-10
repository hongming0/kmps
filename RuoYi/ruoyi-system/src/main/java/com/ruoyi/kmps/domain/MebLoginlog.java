package com.ruoyi.kmps.domain;

import java.util.Date;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 会员登录日志对象 meb_loginlog
 * 
 * @author ruoyi
 * @date 2020-06-10
 */
public class MebLoginlog extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 编号 */
    private Long id;

    /** 平台用户id */
    @Excel(name = "平台用户id")
    private Long mebid;

    /** 登录IP */
    @Excel(name = "登录IP")
    private String loginip;

    /** 登录时间 */
    @Excel(name = "登录时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date loginTime;

    /** 地点 */
    @Excel(name = "地点")
    private String district;

    /** 终端设备 */
    @Excel(name = "终端设备")
    private Integer client;

    /** 客户端浏览器 */
    @Excel(name = "客户端浏览器")
    private String browser;

    /** 密码连续错误次数 */
    @Excel(name = "密码连续错误次数")
    private Integer errnum;

    /** 登录状态 */
    @Excel(name = "登录状态")
    private Integer logsta;

    /** 登录方式 */
    @Excel(name = "登录方式")
    private Integer logintype;

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
    public void setLoginip(String loginip) 
    {
        this.loginip = loginip;
    }

    public String getLoginip() 
    {
        return loginip;
    }
    public void setLoginTime(Date loginTime) 
    {
        this.loginTime = loginTime;
    }

    public Date getLoginTime() 
    {
        return loginTime;
    }
    public void setDistrict(String district) 
    {
        this.district = district;
    }

    public String getDistrict() 
    {
        return district;
    }
    public void setClient(Integer client) 
    {
        this.client = client;
    }

    public Integer getClient() 
    {
        return client;
    }
    public void setBrowser(String browser) 
    {
        this.browser = browser;
    }

    public String getBrowser() 
    {
        return browser;
    }
    public void setErrnum(Integer errnum) 
    {
        this.errnum = errnum;
    }

    public Integer getErrnum() 
    {
        return errnum;
    }
    public void setLogsta(Integer logsta) 
    {
        this.logsta = logsta;
    }

    public Integer getLogsta() 
    {
        return logsta;
    }
    public void setLogintype(Integer logintype) 
    {
        this.logintype = logintype;
    }

    public Integer getLogintype() 
    {
        return logintype;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("mebid", getMebid())
            .append("loginip", getLoginip())
            .append("loginTime", getLoginTime())
            .append("district", getDistrict())
            .append("client", getClient())
            .append("browser", getBrowser())
            .append("errnum", getErrnum())
            .append("logsta", getLogsta())
            .append("logintype", getLogintype())
            .toString();
    }
}
