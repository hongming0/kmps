package com.ruoyi.kmps.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 积分明细对象 meb_pointsrd
 * 
 * @author ruoyi
 * @date 2020-06-10
 */
public class MebPointsrd extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 编号 */
    private Long id;

    /** 平台用户id */
    @Excel(name = "平台用户id")
    private Long mebid;

    /** 发生积分 */
    @Excel(name = "发生积分")
    private Double points;

    /** 当前积分 */
    @Excel(name = "当前积分")
    private Double nowpoints;

    /** 业务类型 */
    @Excel(name = "业务类型")
    private Long modid;

    /** 关联业务记录ID */
    @Excel(name = "关联业务记录ID")
    private Long cid;

    /** 积分类型 */
    @Excel(name = "积分类型")
    private Integer type;

    /** 操作人 */
    @Excel(name = "操作人")
    private Long userid;

    /** 备注 */
    @Excel(name = "备注")
    private String memo;

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
    public void setPoints(Double points) 
    {
        this.points = points;
    }

    public Double getPoints() 
    {
        return points;
    }
    public void setNowpoints(Double nowpoints) 
    {
        this.nowpoints = nowpoints;
    }

    public Double getNowpoints() 
    {
        return nowpoints;
    }
    public void setModid(Long modid) 
    {
        this.modid = modid;
    }

    public Long getModid() 
    {
        return modid;
    }
    public void setCid(Long cid) 
    {
        this.cid = cid;
    }

    public Long getCid() 
    {
        return cid;
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

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("mebid", getMebid())
            .append("points", getPoints())
            .append("nowpoints", getNowpoints())
            .append("modid", getModid())
            .append("cid", getCid())
            .append("type", getType())
            .append("createTime", getCreateTime())
            .append("userid", getUserid())
            .append("memo", getMemo())
            .toString();
    }
}
