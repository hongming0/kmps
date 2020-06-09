package com.ruoyi.kmps.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 【请填写功能名称】对象 addr_edifice_group
 * 
 * @author ruoyi
 * @date 2020-06-06
 */
public class AddrEdificeGroup extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 编号 */
    private Long id;

    /** 大厦id */
    @Excel(name = "大厦id")
    private Long edificeId;

    /** 大厦名称 */
    @Excel(name = "大厦名称")
    private String edificeName;

    /** 会员id */
    @Excel(name = "会员id")
    private Long mebId;

    /** 会员职务 */
    @Excel(name = "会员职务")
    private Integer mebJob;

    /** 楼层 */
    @Excel(name = "楼层")
    private Integer layerNum;

    /** 起始楼层 */
    @Excel(name = "起始楼层")
    private Integer layerStart;

    /** 结束楼层 */
    @Excel(name = "结束楼层")
    private Integer layerEnd;

    /** 解除时间 */
    @Excel(name = "解除时间")
    private Long endTime;

    /** 状态 */
    @Excel(name = "状态")
    private Integer addrSta;

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
    public void setEdificeName(String edificeName) 
    {
        this.edificeName = edificeName;
    }

    public String getEdificeName() 
    {
        return edificeName;
    }
    public void setMebId(Long mebId) 
    {
        this.mebId = mebId;
    }

    public Long getMebId() 
    {
        return mebId;
    }
    public void setMebJob(Integer mebJob) 
    {
        this.mebJob = mebJob;
    }

    public Integer getMebJob() 
    {
        return mebJob;
    }
    public void setLayerNum(Integer layerNum) 
    {
        this.layerNum = layerNum;
    }

    public Integer getLayerNum() 
    {
        return layerNum;
    }
    public void setLayerStart(Integer layerStart) 
    {
        this.layerStart = layerStart;
    }

    public Integer getLayerStart() 
    {
        return layerStart;
    }
    public void setLayerEnd(Integer layerEnd) 
    {
        this.layerEnd = layerEnd;
    }

    public Integer getLayerEnd() 
    {
        return layerEnd;
    }
    public void setEndTime(Long endTime) 
    {
        this.endTime = endTime;
    }

    public Long getEndTime() 
    {
        return endTime;
    }
    public void setAddrSta(Integer addrSta) 
    {
        this.addrSta = addrSta;
    }

    public Integer getAddrSta() 
    {
        return addrSta;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("edificeId", getEdificeId())
            .append("edificeName", getEdificeName())
            .append("mebId", getMebId())
            .append("mebJob", getMebJob())
            .append("layerNum", getLayerNum())
            .append("layerStart", getLayerStart())
            .append("layerEnd", getLayerEnd())
            .append("createTime", getCreateTime())
            .append("endTime", getEndTime())
            .append("addrSta", getAddrSta())
            .toString();
    }
}
