package com.ruoyi.kmps.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 售后单操作记录对象 meb_opinion_saleafteropr
 * 
 * @author ruoyi
 * @date 2020-06-08
 */
public class MebOpinionSaleafteropr extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 自动编号 */
    private Long id;

    /** 投诉单ID */
    @Excel(name = "投诉单ID")
    private Long opinionId;

    /** 操作者ID */
    @Excel(name = "操作者ID")
    private Long createId;

    /** 赔付金额 */
    @Excel(name = "赔付金额")
    private Double opinionPrice;

    /** 描述 */
    @Excel(name = "描述")
    private String desc;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setOpinionId(Long opinionId) 
    {
        this.opinionId = opinionId;
    }

    public Long getOpinionId() 
    {
        return opinionId;
    }
    public void setCreateId(Long createId) 
    {
        this.createId = createId;
    }

    public Long getCreateId() 
    {
        return createId;
    }
    public void setOpinionPrice(Double opinionPrice) 
    {
        this.opinionPrice = opinionPrice;
    }

    public Double getOpinionPrice() 
    {
        return opinionPrice;
    }
    public void setDesc(String desc) 
    {
        this.desc = desc;
    }

    public String getDesc() 
    {
        return desc;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("opinionId", getOpinionId())
            .append("createId", getCreateId())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("opinionPrice", getOpinionPrice())
            .append("desc", getDesc())
            .toString();
    }
}
