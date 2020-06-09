package com.ruoyi.kmps.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 【请填写功能名称】对象 meb_vacation
 * 
 * @author ruoyi
 * @date 2020-06-06
 */
public class MebVacation extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 编号 */
    private Long id;

    /** 平台用户id */
    @Excel(name = "平台用户id")
    private Long mebid;

    /** 姓名 */
    @Excel(name = "姓名")
    private String name;

    /** 开始时间 */
    @Excel(name = "开始时间")
    private Long starttime;

    /** 结束时间 */
    @Excel(name = "结束时间")
    private Long endtime;

    /** 类型 */
    @Excel(name = "类型")
    private Integer type;

    /** 审核状态 */
    @Excel(name = "审核状态")
    private Integer reversta;

    /** 请假事由 */
    @Excel(name = "请假事由")
    private String reason;

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
    public void setName(String name) 
    {
        this.name = name;
    }

    public String getName() 
    {
        return name;
    }
    public void setStarttime(Long starttime) 
    {
        this.starttime = starttime;
    }

    public Long getStarttime() 
    {
        return starttime;
    }
    public void setEndtime(Long endtime) 
    {
        this.endtime = endtime;
    }

    public Long getEndtime() 
    {
        return endtime;
    }
    public void setType(Integer type) 
    {
        this.type = type;
    }

    public Integer getType() 
    {
        return type;
    }
    public void setReversta(Integer reversta) 
    {
        this.reversta = reversta;
    }

    public Integer getReversta() 
    {
        return reversta;
    }
    public void setReason(String reason) 
    {
        this.reason = reason;
    }

    public String getReason() 
    {
        return reason;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("mebid", getMebid())
            .append("name", getName())
            .append("starttime", getStarttime())
            .append("endtime", getEndtime())
            .append("type", getType())
            .append("reversta", getReversta())
            .append("reason", getReason())
            .toString();
    }
}
