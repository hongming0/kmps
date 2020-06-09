package com.ruoyi.kmps.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 投诉对象 meb_opinion
 * 
 * @author ruoyi
 * @date 2020-06-08
 */
public class MebOpinion extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 编号 */
    private Long id;

    /** 投诉类型 */
    @Excel(name = "投诉类型")
    private Integer type;

    /** 描述 */
    @Excel(name = "描述")
    private String desc;

    /** 投诉人id */
    @Excel(name = "投诉人id")
    private Long mebId;

    /** 订单编号 */
    @Excel(name = "订单编号")
    private String orderSl;

    /** 订单序列号 */
    @Excel(name = "订单序列号")
    private Long orderNum;

    /** 投诉大厦 */
    @Excel(name = "投诉大厦")
    private Long addrId;

    /** 提交时间 */
    @Excel(name = "提交时间")
    private Long submitTime;

    /** 处理时间 */
    @Excel(name = "处理时间")
    private Long handleTime;

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

    /** 处理人 */
    @Excel(name = "处理人")
    private Long userId;

    /** 状态 */
    @Excel(name = "状态")
    private Integer opinionsta;

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
    public void setDesc(String desc) 
    {
        this.desc = desc;
    }

    public String getDesc() 
    {
        return desc;
    }
    public void setMebId(Long mebId) 
    {
        this.mebId = mebId;
    }

    public Long getMebId() 
    {
        return mebId;
    }
    public void setOrderSl(String orderSl) 
    {
        this.orderSl = orderSl;
    }

    public String getOrderSl() 
    {
        return orderSl;
    }
    public void setOrderNum(Long orderNum) 
    {
        this.orderNum = orderNum;
    }

    public Long getOrderNum() 
    {
        return orderNum;
    }
    public void setAddrId(Long addrId) 
    {
        this.addrId = addrId;
    }

    public Long getAddrId() 
    {
        return addrId;
    }
    public void setSubmitTime(Long submitTime) 
    {
        this.submitTime = submitTime;
    }

    public Long getSubmitTime() 
    {
        return submitTime;
    }
    public void setHandleTime(Long handleTime) 
    {
        this.handleTime = handleTime;
    }

    public Long getHandleTime() 
    {
        return handleTime;
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
    public void setUserId(Long userId) 
    {
        this.userId = userId;
    }

    public Long getUserId() 
    {
        return userId;
    }
    public void setOpinionsta(Integer opinionsta) 
    {
        this.opinionsta = opinionsta;
    }

    public Integer getOpinionsta() 
    {
        return opinionsta;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("type", getType())
            .append("desc", getDesc())
            .append("mebId", getMebId())
            .append("orderSl", getOrderSl())
            .append("orderNum", getOrderNum())
            .append("addrId", getAddrId())
            .append("submitTime", getSubmitTime())
            .append("handleTime", getHandleTime())
            .append("fj1", getFj1())
            .append("fj2", getFj2())
            .append("fj3", getFj3())
            .append("fj4", getFj4())
            .append("userId", getUserId())
            .append("opinionsta", getOpinionsta())
            .toString();
    }
}
