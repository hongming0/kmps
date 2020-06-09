package com.ruoyi.kmps.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 绑定银行卡记录对象 meb_bankbind
 * 
 * @author ruoyi
 * @date 2020-06-06
 */
public class MebBankbind extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 自动编号 */
    private Long id;

    /** 平台用户id */
    @Excel(name = "平台用户id")
    private Long mebid;

    /** 银行ID */
    @Excel(name = "银行ID")
    private String bankid;

    /** 银行卡类型 */
    @Excel(name = "银行卡类型")
    private Integer ctype;

    /** 账户名 */
    @Excel(name = "账户名")
    private String accname;

    /** 开卡证件号 */
    @Excel(name = "开卡证件号")
    private String accidno;

    /** 银行卡账号 */
    @Excel(name = "银行卡账号")
    private String cardno;

    /** 脱敏后的银行账户 */
    @Excel(name = "脱敏后的银行账户")
    private String dscardno;

    /** 识别后的银行名称 */
    @Excel(name = "识别后的银行名称")
    private String bankneme;

    /** 省市区 编号 */
    @Excel(name = "省市区 编号")
    private String cityno;

    /** 开户支行详细地址 */
    @Excel(name = "开户支行详细地址")
    private String subbankaddr;

    /** 状态 */
    @Excel(name = "状态")
    private Integer status;

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
    public void setBankid(String bankid) 
    {
        this.bankid = bankid;
    }

    public String getBankid() 
    {
        return bankid;
    }
    public void setCtype(Integer ctype) 
    {
        this.ctype = ctype;
    }

    public Integer getCtype() 
    {
        return ctype;
    }
    public void setAccname(String accname) 
    {
        this.accname = accname;
    }

    public String getAccname() 
    {
        return accname;
    }
    public void setAccidno(String accidno) 
    {
        this.accidno = accidno;
    }

    public String getAccidno() 
    {
        return accidno;
    }
    public void setCardno(String cardno) 
    {
        this.cardno = cardno;
    }

    public String getCardno() 
    {
        return cardno;
    }
    public void setDscardno(String dscardno) 
    {
        this.dscardno = dscardno;
    }

    public String getDscardno() 
    {
        return dscardno;
    }
    public void setBankneme(String bankneme) 
    {
        this.bankneme = bankneme;
    }

    public String getBankneme() 
    {
        return bankneme;
    }
    public void setCityno(String cityno) 
    {
        this.cityno = cityno;
    }

    public String getCityno() 
    {
        return cityno;
    }
    public void setSubbankaddr(String subbankaddr) 
    {
        this.subbankaddr = subbankaddr;
    }

    public String getSubbankaddr() 
    {
        return subbankaddr;
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
            .append("bankid", getBankid())
            .append("ctype", getCtype())
            .append("accname", getAccname())
            .append("accidno", getAccidno())
            .append("cardno", getCardno())
            .append("dscardno", getDscardno())
            .append("bankneme", getBankneme())
            .append("cityno", getCityno())
            .append("subbankaddr", getSubbankaddr())
            .append("status", getStatus())
            .append("createtime", getCreatetime())
            .append("createby", getCreateby())
            .append("updatetime", getUpdatetime())
            .append("updateby", getUpdateby())
            .toString();
    }
}
