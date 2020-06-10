package com.ruoyi.kmps.domain;

import java.util.Date;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 会员实名认证记录对象 meb_authname
 * 
 * @author ruoyi
 * @date 2020-06-10
 */
public class MebAuthname extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 编号 */
    private Long id;

    /** 平台用户id */
    @Excel(name = "平台用户id")
    private Long mebid;

    /** 实名类型 */
    @Excel(name = "实名类型")
    private Integer mebidty;

    /** 名称 */
    @Excel(name = "名称")
    private String realname;

    /** 证件号码 */
    @Excel(name = "证件号码")
    private String idno;

    /** 附件一 */
    @Excel(name = "附件一")
    private String fj1;

    /** 附件二 */
    @Excel(name = "附件二")
    private String fj2;

    /** 附件三 */
    @Excel(name = "附件三")
    private String fj3;

    /** 附件四 */
    @Excel(name = "附件四")
    private String fj4;

    /** 审核意见 */
    @Excel(name = "审核意见")
    private String auditopn;

    /** 状态 */
    @Excel(name = "状态")
    private Integer authsta;

    /** 审核员 */
    @Excel(name = "审核员")
    private Long auditor;

    /** 审核时间 */
    @Excel(name = "审核时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date auditTime;

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
    public void setRealname(String realname) 
    {
        this.realname = realname;
    }

    public String getRealname() 
    {
        return realname;
    }
    public void setIdno(String idno) 
    {
        this.idno = idno;
    }

    public String getIdno() 
    {
        return idno;
    }
    public void setFj1(String fj1) 
    {
        this.fj1 = fj1;
    }

    public String getFj1() 
    {
        return fj1;
    }
    public void setFj2(String fj2) 
    {
        this.fj2 = fj2;
    }

    public String getFj2() 
    {
        return fj2;
    }
    public void setFj3(String fj3) 
    {
        this.fj3 = fj3;
    }

    public String getFj3() 
    {
        return fj3;
    }
    public void setFj4(String fj4) 
    {
        this.fj4 = fj4;
    }

    public String getFj4() 
    {
        return fj4;
    }
    public void setAuditopn(String auditopn) 
    {
        this.auditopn = auditopn;
    }

    public String getAuditopn() 
    {
        return auditopn;
    }
    public void setAuthsta(Integer authsta) 
    {
        this.authsta = authsta;
    }

    public Integer getAuthsta() 
    {
        return authsta;
    }
    public void setAuditor(Long auditor) 
    {
        this.auditor = auditor;
    }

    public Long getAuditor() 
    {
        return auditor;
    }
    public void setAuditTime(Date auditTime) 
    {
        this.auditTime = auditTime;
    }

    public Date getAuditTime() 
    {
        return auditTime;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("mebid", getMebid())
            .append("mebidty", getMebidty())
            .append("realname", getRealname())
            .append("idno", getIdno())
            .append("fj1", getFj1())
            .append("fj2", getFj2())
            .append("fj3", getFj3())
            .append("fj4", getFj4())
            .append("auditopn", getAuditopn())
            .append("authsta", getAuthsta())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("auditor", getAuditor())
            .append("auditTime", getAuditTime())
            .toString();
    }
}
