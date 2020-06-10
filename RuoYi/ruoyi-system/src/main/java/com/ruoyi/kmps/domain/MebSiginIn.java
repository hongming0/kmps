package com.ruoyi.kmps.domain;

import java.util.Date;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 会员打卡对象 meb_sigin_in
 * 
 * @author ruoyi
 * @date 2020-06-10
 */
public class MebSiginIn extends BaseEntity
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

    /** IP */
    @Excel(name = "IP")
    private String loginip;

    /** 时间 */
    @Excel(name = "时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date loginTime;

    /** 地点 */
    @Excel(name = "地点")
    private String district;

    /** 纬度 */
    @Excel(name = "纬度")
    private Long latitude;

    /** 经度 */
    @Excel(name = "经度")
    private Long longitude;

    /** 终端设备 */
    @Excel(name = "终端设备")
    private Integer client;

    /** 类型 */
    @Excel(name = "类型")
    private Integer type;

    /** 状态 */
    @Excel(name = "状态")
    private Integer siginsta;

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
    public void setLoginip(String loginip) 
    {
        this.loginip = loginip;
    }

    public String getLoginip() 
    {
        return loginip;
    }
    public void setLoginTime(Date loginTime) 
    {
        this.loginTime = loginTime;
    }

    public Date getLoginTime() 
    {
        return loginTime;
    }
    public void setDistrict(String district) 
    {
        this.district = district;
    }

    public String getDistrict() 
    {
        return district;
    }
    public void setLatitude(Long latitude) 
    {
        this.latitude = latitude;
    }

    public Long getLatitude() 
    {
        return latitude;
    }
    public void setLongitude(Long longitude) 
    {
        this.longitude = longitude;
    }

    public Long getLongitude() 
    {
        return longitude;
    }
    public void setClient(Integer client) 
    {
        this.client = client;
    }

    public Integer getClient() 
    {
        return client;
    }
    public void setType(Integer type) 
    {
        this.type = type;
    }

    public Integer getType() 
    {
        return type;
    }
    public void setSiginsta(Integer siginsta) 
    {
        this.siginsta = siginsta;
    }

    public Integer getSiginsta() 
    {
        return siginsta;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("mebid", getMebid())
            .append("name", getName())
            .append("loginip", getLoginip())
            .append("loginTime", getLoginTime())
            .append("district", getDistrict())
            .append("latitude", getLatitude())
            .append("longitude", getLongitude())
            .append("client", getClient())
            .append("type", getType())
            .append("siginsta", getSiginsta())
            .toString();
    }
}
