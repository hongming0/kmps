package com.ruoyi.kmps.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 【请填写功能名称】对象 addr_edifice
 * 
 * @author ruoyi
 * @date 2020-06-06
 */
public class AddrEdifice extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 编号 */
    private Long id;

    /** 名称 */
    @Excel(name = "名称")
    private String addrName;

    /** 图片地址 */
    @Excel(name = "图片地址")
    private String addrPath;

    /** 省 */
    @Excel(name = "省")
    private String province;

    /** 市 */
    @Excel(name = "市")
    private String city;

    /** 区 */
    @Excel(name = "区")
    private String area;

    /** 经度 */
    @Excel(name = "经度")
    private Long longitude;

    /** 纬度 */
    @Excel(name = "纬度")
    private Long latitude;

    /** 楼层 */
    @Excel(name = "楼层")
    private Integer layerNum;

    /** 业务员 */
    @Excel(name = "业务员")
    private Long userId;

    /** 入驻时间 */
    @Excel(name = "入驻时间")
    private Long joinTime;

    /** 解除时间 */
    @Excel(name = "解除时间")
    private Long leaveTime;

    /** 营业开始时间 */
    @Excel(name = "营业开始时间")
    private Long startTime;

    /** 营业结束时间 */
    @Excel(name = "营业结束时间")
    private Long endTime;

    /** 状态 */
    @Excel(name = "状态")
    private Integer addrsta;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setAddrName(String addrName) 
    {
        this.addrName = addrName;
    }

    public String getAddrName() 
    {
        return addrName;
    }
    public void setAddrPath(String addrPath) 
    {
        this.addrPath = addrPath;
    }

    public String getAddrPath() 
    {
        return addrPath;
    }
    public void setProvince(String province) 
    {
        this.province = province;
    }

    public String getProvince() 
    {
        return province;
    }
    public void setCity(String city) 
    {
        this.city = city;
    }

    public String getCity() 
    {
        return city;
    }
    public void setArea(String area) 
    {
        this.area = area;
    }

    public String getArea() 
    {
        return area;
    }
    public void setLongitude(Long longitude) 
    {
        this.longitude = longitude;
    }

    public Long getLongitude() 
    {
        return longitude;
    }
    public void setLatitude(Long latitude) 
    {
        this.latitude = latitude;
    }

    public Long getLatitude() 
    {
        return latitude;
    }
    public void setLayerNum(Integer layerNum) 
    {
        this.layerNum = layerNum;
    }

    public Integer getLayerNum() 
    {
        return layerNum;
    }
    public void setUserId(Long userId) 
    {
        this.userId = userId;
    }

    public Long getUserId() 
    {
        return userId;
    }
    public void setJoinTime(Long joinTime) 
    {
        this.joinTime = joinTime;
    }

    public Long getJoinTime() 
    {
        return joinTime;
    }
    public void setLeaveTime(Long leaveTime) 
    {
        this.leaveTime = leaveTime;
    }

    public Long getLeaveTime() 
    {
        return leaveTime;
    }
    public void setStartTime(Long startTime) 
    {
        this.startTime = startTime;
    }

    public Long getStartTime() 
    {
        return startTime;
    }
    public void setEndTime(Long endTime) 
    {
        this.endTime = endTime;
    }

    public Long getEndTime() 
    {
        return endTime;
    }
    public void setAddrsta(Integer addrsta) 
    {
        this.addrsta = addrsta;
    }

    public Integer getAddrsta() 
    {
        return addrsta;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("addrName", getAddrName())
            .append("addrPath", getAddrPath())
            .append("province", getProvince())
            .append("city", getCity())
            .append("area", getArea())
            .append("longitude", getLongitude())
            .append("latitude", getLatitude())
            .append("layerNum", getLayerNum())
            .append("userId", getUserId())
            .append("joinTime", getJoinTime())
            .append("leaveTime", getLeaveTime())
            .append("startTime", getStartTime())
            .append("endTime", getEndTime())
            .append("addrsta", getAddrsta())
            .toString();
    }
}
