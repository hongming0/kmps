package com.ruoyi.kmps.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 提现对象 meb_financelcash
 * 
 * @author ruoyi
 * @date 2020-06-06
 */
public class MebFinancelcash extends BaseEntity
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

    /** 银行卡类型 */
    @Excel(name = "银行卡类型")
    private Integer ctype;

    /** 银行名称 */
    @Excel(name = "银行名称")
    private String bankneme;

    /** 开户支行详细地址 */
    @Excel(name = "开户支行详细地址")
    private String subbankaddr;

    /** 账户名 */
    @Excel(name = "账户名")
    private String accname;

    /** 银行卡账号 */
    @Excel(name = "银行卡账号")
    private String cardno;

    /** 提现状态 */
    @Excel(name = "提现状态")
    private Integer cashSta;

    /** 提现处理备注 */
    @Excel(name = "提现处理备注")
    private String cashDesc;

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

    private Long createtime;

    private Long createby;

    private Long updatetime;

    private Long updateby;

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
    public void setCtype(Integer ctype) 
    {
        this.ctype = ctype;
    }

    public Integer getCtype() 
    {
        return ctype;
    }
    public void setBankneme(String bankneme) 
    {
        this.bankneme = bankneme;
    }

    public String getBankneme() 
    {
        return bankneme;
    }
    public void setSubbankaddr(String subbankaddr) 
    {
        this.subbankaddr = subbankaddr;
    }

    public String getSubbankaddr() 
    {
        return subbankaddr;
    }
    public void setAccname(String accname) 
    {
        this.accname = accname;
    }

    public String getAccname() 
    {
        return accname;
    }
    public void setCardno(String cardno) 
    {
        this.cardno = cardno;
    }

    public String getCardno() 
    {
        return cardno;
    }
    public void setCashSta(Integer cashSta) 
    {
        this.cashSta = cashSta;
    }

    public Integer getCashSta() 
    {
        return cashSta;
    }
    public void setCashDesc(String cashDesc) 
    {
        this.cashDesc = cashDesc;
    }

    public String getCashDesc() 
    {
        return cashDesc;
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
    public void setCreatetime(Long createtime) {
        this.createtime = createtime;
    }

    public Long getCreatetime() {
        return createtime;
    }

    public void setCreateby(Long createby) {
        this.createby = createby;
    }

    public Long getCreateby() {
        return createby;
    }

    public void setUpdatetime(Long updatetime) {
        this.updatetime = updatetime;
    }

    public Long getUpdatetime() {
        return updatetime;
    }

    public void setUpdateby(Long updateby) {
        this.updateby = updateby;
    }

    public Long getUpdateby() {
        return updateby;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("mebid", getMebid())
            .append("sl", getSl())
            .append("actamt", getActamt())
            .append("nowamt", getNowamt())
            .append("ctype", getCtype())
            .append("bankneme", getBankneme())
            .append("subbankaddr", getSubbankaddr())
            .append("accname", getAccname())
            .append("cardno", getCardno())
            .append("cashSta", getCashSta())
            .append("cashDesc", getCashDesc())
            .append("createtime", getCreatetime())
            .append("createby", getCreateby())
            .append("updatetime", getUpdatetime())
            .append("updateby", getUpdateby())
            .append("memo", getMemo())
            .append("m1", getM1())
            .append("m2", getM2())
            .append("m3", getM3())
            .toString();
    }
}
