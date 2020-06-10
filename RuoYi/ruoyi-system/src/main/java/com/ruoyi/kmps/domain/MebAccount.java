package com.ruoyi.kmps.domain;

import java.util.Date;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 会员账号对象 meb_account
 * 
 * @author ruoyi
 * @date 2020-06-10
 */
public class MebAccount extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 编号 */
    private Long id;

    /** 会员类型 */
    @Excel(name = "会员类型")
    private Integer type;

    /** 手机号 */
    @Excel(name = "手机号")
    private String phone;

    /** 账号 */
    @Excel(name = "账号")
    private String account;

    /** 密码 */
    @Excel(name = "密码")
    private String password;

    /** 加盐 */
    @Excel(name = "加盐")
    private String salt;

    /** 邮件地址 */
    @Excel(name = "邮件地址")
    private String email;

    /** 注册时间 */
    @Excel(name = "注册时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date regTime;

    /** 注册ip */
    @Excel(name = "注册ip")
    private String regip;

    /** 注册客户端 */
    @Excel(name = "注册客户端")
    private Integer regclt;

    /** 获客渠道 */
    @Excel(name = "获客渠道")
    private String regcha;

    /** 推荐码 */
    @Excel(name = "推荐码")
    private String refcode;

    /** 已注册用户推荐 */
    @Excel(name = "已注册用户推荐")
    private Long puid;

    /** 状态 */
    @Excel(name = "状态")
    private Integer accsta;

    /** 最后登录时间 */
    @Excel(name = "最后登录时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date lastloginTime;

    /** 最后登录IP */
    @Excel(name = "最后登录IP")
    private String lastloginIp;

    /** 当前密码连续错误次数 */
    @Excel(name = "当前密码连续错误次数")
    private Long passerr;

    /** 预留字段一 */
    @Excel(name = "预留字段一")
    private String m1;

    /** 预留字段二 */
    @Excel(name = "预留字段二")
    private String m2;

    /** 预留字段三 */
    @Excel(name = "预留字段三")
    private String m3;

    /** 可用余额 */
    @Excel(name = "可用余额")
    private Double mebmoney;

    /** 锁定金额 */
    @Excel(name = "锁定金额")
    private Double fremoney;

    /** 积分总额 */
    @Excel(name = "积分总额")
    private Double tpoints;

    /** 版本号（乐观锁） */
    @Excel(name = "版本号", readConverterExp = "乐=观锁")
    private Long version;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setType(Integer type) 
    {
        this.type = type;
    }

    public Integer getType() 
    {
        return type;
    }
    public void setPhone(String phone) 
    {
        this.phone = phone;
    }

    public String getPhone() 
    {
        return phone;
    }
    public void setAccount(String account) 
    {
        this.account = account;
    }

    public String getAccount() 
    {
        return account;
    }
    public void setPassword(String password) 
    {
        this.password = password;
    }

    public String getPassword() 
    {
        return password;
    }
    public void setSalt(String salt) 
    {
        this.salt = salt;
    }

    public String getSalt() 
    {
        return salt;
    }
    public void setEmail(String email) 
    {
        this.email = email;
    }

    public String getEmail() 
    {
        return email;
    }
    public void setRegTime(Date regTime) 
    {
        this.regTime = regTime;
    }

    public Date getRegTime() 
    {
        return regTime;
    }
    public void setRegip(String regip) 
    {
        this.regip = regip;
    }

    public String getRegip() 
    {
        return regip;
    }
    public void setRegclt(Integer regclt) 
    {
        this.regclt = regclt;
    }

    public Integer getRegclt() 
    {
        return regclt;
    }
    public void setRegcha(String regcha) 
    {
        this.regcha = regcha;
    }

    public String getRegcha() 
    {
        return regcha;
    }
    public void setRefcode(String refcode) 
    {
        this.refcode = refcode;
    }

    public String getRefcode() 
    {
        return refcode;
    }
    public void setPuid(Long puid) 
    {
        this.puid = puid;
    }

    public Long getPuid() 
    {
        return puid;
    }
    public void setAccsta(Integer accsta) 
    {
        this.accsta = accsta;
    }

    public Integer getAccsta() 
    {
        return accsta;
    }
    public void setLastloginTime(Date lastloginTime) 
    {
        this.lastloginTime = lastloginTime;
    }

    public Date getLastloginTime() 
    {
        return lastloginTime;
    }
    public void setLastloginIp(String lastloginIp) 
    {
        this.lastloginIp = lastloginIp;
    }

    public String getLastloginIp() 
    {
        return lastloginIp;
    }
    public void setPasserr(Long passerr) 
    {
        this.passerr = passerr;
    }

    public Long getPasserr() 
    {
        return passerr;
    }
    public void setM1(String m1) 
    {
        this.m1 = m1;
    }

    public String getM1() 
    {
        return m1;
    }
    public void setM2(String m2) 
    {
        this.m2 = m2;
    }

    public String getM2() 
    {
        return m2;
    }
    public void setM3(String m3) 
    {
        this.m3 = m3;
    }

    public String getM3() 
    {
        return m3;
    }
    public void setMebmoney(Double mebmoney) 
    {
        this.mebmoney = mebmoney;
    }

    public Double getMebmoney() 
    {
        return mebmoney;
    }
    public void setFremoney(Double fremoney) 
    {
        this.fremoney = fremoney;
    }

    public Double getFremoney() 
    {
        return fremoney;
    }
    public void setTpoints(Double tpoints) 
    {
        this.tpoints = tpoints;
    }

    public Double getTpoints() 
    {
        return tpoints;
    }
    public void setVersion(Long version) 
    {
        this.version = version;
    }

    public Long getVersion() 
    {
        return version;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("type", getType())
            .append("phone", getPhone())
            .append("account", getAccount())
            .append("password", getPassword())
            .append("salt", getSalt())
            .append("email", getEmail())
            .append("regTime", getRegTime())
            .append("regip", getRegip())
            .append("regclt", getRegclt())
            .append("regcha", getRegcha())
            .append("refcode", getRefcode())
            .append("puid", getPuid())
            .append("accsta", getAccsta())
            .append("lastloginTime", getLastloginTime())
            .append("lastloginIp", getLastloginIp())
            .append("passerr", getPasserr())
            .append("m1", getM1())
            .append("m2", getM2())
            .append("m3", getM3())
            .append("mebmoney", getMebmoney())
            .append("fremoney", getFremoney())
            .append("tpoints", getTpoints())
            .append("version", getVersion())
            .toString();
    }
}
