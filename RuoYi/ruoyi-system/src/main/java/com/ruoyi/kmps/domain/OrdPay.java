package com.ruoyi.kmps.domain;

import java.util.Date;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 订单支付记录对象 ord_pay
 * 
 * @author ruoyi
 * @date 2020-06-10
 */
public class OrdPay extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 自动编号 */
    private Long id;

    /** 支付流水号 */
    @Excel(name = "支付流水号")
    private String paySl;

    /** 订单ID */
    @Excel(name = "订单ID")
    private Long orderId;

    /** 用户id */
    @Excel(name = "用户id")
    private Long mebId;

    /** 应付总金额 */
    @Excel(name = "应付总金额")
    private Double totleAmount;

    /** 使用红包金额(预留) */
    @Excel(name = "使用红包金额(预留)")
    private Double totleCouponAmount;

    /** 实际付款金额 */
    @Excel(name = "实际付款金额")
    private Double totleActAmount;

    /** 支付方式  */
    @Excel(name = "支付方式 ")
    private Integer payMode;

    /** 支付渠道 */
    @Excel(name = "支付渠道")
    private Integer payChannel;

    /** 支付参数 */
    @Excel(name = "支付参数")
    private String payPara;

    /** 返回值 第三方支付流水号，含银行转账流水号 */
    @Excel(name = "返回值 第三方支付流水号，含银行转账流水号")
    private String returnVal;

    /** 支付状态 */
    @Excel(name = "支付状态")
    private Integer paySta;

    /** 完成支付时间 */
    @Excel(name = "完成支付时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date finishTime;

    /** 支付关闭时间 */
    @Excel(name = "支付关闭时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date closeTime;

    /** 关闭操作人 */
    @Excel(name = "关闭操作人")
    private Long closeBy;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setPaySl(String paySl) 
    {
        this.paySl = paySl;
    }

    public String getPaySl() 
    {
        return paySl;
    }
    public void setOrderId(Long orderId) 
    {
        this.orderId = orderId;
    }

    public Long getOrderId() 
    {
        return orderId;
    }
    public void setMebId(Long mebId) 
    {
        this.mebId = mebId;
    }

    public Long getMebId() 
    {
        return mebId;
    }
    public void setTotleAmount(Double totleAmount) 
    {
        this.totleAmount = totleAmount;
    }

    public Double getTotleAmount() 
    {
        return totleAmount;
    }
    public void setTotleCouponAmount(Double totleCouponAmount) 
    {
        this.totleCouponAmount = totleCouponAmount;
    }

    public Double getTotleCouponAmount() 
    {
        return totleCouponAmount;
    }
    public void setTotleActAmount(Double totleActAmount) 
    {
        this.totleActAmount = totleActAmount;
    }

    public Double getTotleActAmount() 
    {
        return totleActAmount;
    }
    public void setPayMode(Integer payMode) 
    {
        this.payMode = payMode;
    }

    public Integer getPayMode() 
    {
        return payMode;
    }
    public void setPayChannel(Integer payChannel) 
    {
        this.payChannel = payChannel;
    }

    public Integer getPayChannel() 
    {
        return payChannel;
    }
    public void setPayPara(String payPara) 
    {
        this.payPara = payPara;
    }

    public String getPayPara() 
    {
        return payPara;
    }
    public void setReturnVal(String returnVal) 
    {
        this.returnVal = returnVal;
    }

    public String getReturnVal() 
    {
        return returnVal;
    }
    public void setPaySta(Integer paySta) 
    {
        this.paySta = paySta;
    }

    public Integer getPaySta() 
    {
        return paySta;
    }
    public void setFinishTime(Date finishTime) 
    {
        this.finishTime = finishTime;
    }

    public Date getFinishTime() 
    {
        return finishTime;
    }
    public void setCloseTime(Date closeTime) 
    {
        this.closeTime = closeTime;
    }

    public Date getCloseTime() 
    {
        return closeTime;
    }
    public void setCloseBy(Long closeBy) 
    {
        this.closeBy = closeBy;
    }

    public Long getCloseBy() 
    {
        return closeBy;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("paySl", getPaySl())
            .append("orderId", getOrderId())
            .append("mebId", getMebId())
            .append("totleAmount", getTotleAmount())
            .append("totleCouponAmount", getTotleCouponAmount())
            .append("totleActAmount", getTotleActAmount())
            .append("payMode", getPayMode())
            .append("payChannel", getPayChannel())
            .append("payPara", getPayPara())
            .append("returnVal", getReturnVal())
            .append("paySta", getPaySta())
            .append("createTime", getCreateTime())
            .append("finishTime", getFinishTime())
            .append("closeTime", getCloseTime())
            .append("closeBy", getCloseBy())
            .toString();
    }
}
