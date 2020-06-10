package com.ruoyi.kmps.domain;

import java.util.Date;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 楼宇价格对象 ord_activity_price
 * 
 * @author ruoyi
 * @date 2020-06-10
 */
public class OrdActivityPrice extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 活动编号 */
    private Long id;

    /** 大厦id */
    @Excel(name = "大厦id")
    private Long edificeId;

    /** 原价 */
    @Excel(name = "原价")
    private Double price;

    /** 折扣 */
    @Excel(name = "折扣")
    private Long rate;

    /** 优惠金额 */
    @Excel(name = "优惠金额")
    private Double discountPrice;

    /** 开始时间 */
    @Excel(name = "开始时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date startTime;

    /** 结束时间 */
    @Excel(name = "结束时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date endTime;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setEdificeId(Long edificeId) 
    {
        this.edificeId = edificeId;
    }

    public Long getEdificeId() 
    {
        return edificeId;
    }
    public void setPrice(Double price) 
    {
        this.price = price;
    }

    public Double getPrice() 
    {
        return price;
    }
    public void setRate(Long rate) 
    {
        this.rate = rate;
    }

    public Long getRate() 
    {
        return rate;
    }
    public void setDiscountPrice(Double discountPrice) 
    {
        this.discountPrice = discountPrice;
    }

    public Double getDiscountPrice() 
    {
        return discountPrice;
    }
    public void setStartTime(Date startTime) 
    {
        this.startTime = startTime;
    }

    public Date getStartTime() 
    {
        return startTime;
    }
    public void setEndTime(Date endTime) 
    {
        this.endTime = endTime;
    }

    public Date getEndTime() 
    {
        return endTime;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("edificeId", getEdificeId())
            .append("price", getPrice())
            .append("rate", getRate())
            .append("discountPrice", getDiscountPrice())
            .append("startTime", getStartTime())
            .append("endTime", getEndTime())
            .toString();
    }
}
