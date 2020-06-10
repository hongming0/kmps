package com.ruoyi.kmps.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 资金明细对象 meb_financelrd
 * 
 * @author ruoyi
 * @date 2020-06-10
 */
public class MebFinancelrd extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 编号 */
    private Long id;

    /** 平台用户id */
    @Excel(name = "平台用户id")
    private Long mebid;

    /** 序列号 */
    @Excel(name = "序列号")
    private String sl;

    /** 发生金额 */
    @Excel(name = "发生金额")
    private Double actamt;

    /** 当前余额 */
    @Excel(name = "当前余额")
    private Double nowamt;

    /** 金额类型 */
    @Excel(name = "金额类型")
    private Integer type;

    /** 操作人 */
    @Excel(name = "操作人")
    private Long userid;

    /** 备注 */
    @Excel(name = "备注")
    private String memo;

    /** 预留字段一 */
    @Excel(name = "预留字段一")
    private String m1;

    /** 预留字段二 */
    @Excel(name = "预留字段二")
    private String m2;

    /** 预留字段三 */
    @Excel(name = "预留字段三")
    private String m3;

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
    public void setSl(String sl) 
    {
        this.sl = sl;
    }

    public String getSl() 
    {
        return sl;
    }
    public void setActamt(Double actamt) 
    {
        this.actamt = actamt;
    }

    public Double getActamt() 
    {
        return actamt;
    }
    public void setNowamt(Double nowamt) 
    {
        this.nowamt = nowamt;
    }

    public Double getNowamt() 
    {
        return nowamt;
    }
    public void setType(Integer type) 
    {
        this.type = type;
    }

    public Integer getType() 
    {
        return type;
    }
    public void setUserid(Long userid) 
    {
        this.userid = userid;
    }

    public Long getUserid() 
    {
        return userid;
    }
    public void setMemo(String memo) 
    {
        this.memo = memo;
    }

    public String getMemo() 
    {
        return memo;
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

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("mebid", getMebid())
            .append("sl", getSl())
            .append("actamt", getActamt())
            .append("nowamt", getNowamt())
            .append("type", getType())
            .append("createTime", getCreateTime())
            .append("userid", getUserid())
            .append("memo", getMemo())
            .append("m1", getM1())
            .append("m2", getM2())
            .append("m3", getM3())
            .toString();
    }
}
