package com.ruoyi.kmps.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 银行信息对象 set_databank
 * 
 * @author ruoyi
 * @date 2020-06-06
 */
public class SetDatabank extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 银行编号 */
    private Long id;

    /** 银行名称 */
    @Excel(name = "银行名称")
    private String bankName;

    /** 银行简写 */
    @Excel(name = "银行简写")
    private String bankCode;

    /** 图标路径 */
    @Excel(name = "图标路径")
    private String ico;

    /** 状态 */
    @Excel(name = "状态")
    private Integer status;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setBankName(String bankName) 
    {
        this.bankName = bankName;
    }

    public String getBankName() 
    {
        return bankName;
    }
    public void setBankCode(String bankCode) 
    {
        this.bankCode = bankCode;
    }

    public String getBankCode() 
    {
        return bankCode;
    }
    public void setIco(String ico) 
    {
        this.ico = ico;
    }

    public String getIco() 
    {
        return ico;
    }
    public void setStatus(Integer status) 
    {
        this.status = status;
    }

    public Integer getStatus() 
    {
        return status;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("bankName", getBankName())
            .append("bankCode", getBankCode())
            .append("ico", getIco())
            .append("status", getStatus())
            .toString();
    }
}
