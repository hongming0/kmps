package com.ruoyi.kmps.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 会员地址列对象 meb_addrlist
 * 
 * @author ruoyi
 * @date 2020-06-10
 */
public class MebAddrlist extends BaseEntity
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

    /** 手机 */
    @Excel(name = "手机")
    private String phone;

    /** 省市区 编号 */
    @Excel(name = "省市区 编号")
    private String cityno;

    /** 详细地址 */
    @Excel(name = "详细地址")
    private String addr;

    /** 邮编 */
    @Excel(name = "邮编")
    private String zipcode;

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
    public void setPhone(String phone) 
    {
        this.phone = phone;
    }

    public String getPhone() 
    {
        return phone;
    }
    public void setCityno(String cityno) 
    {
        this.cityno = cityno;
    }

    public String getCityno() 
    {
        return cityno;
    }
    public void setAddr(String addr) 
    {
        this.addr = addr;
    }

    public String getAddr() 
    {
        return addr;
    }
    public void setZipcode(String zipcode) 
    {
        this.zipcode = zipcode;
    }

    public String getZipcode() 
    {
        return zipcode;
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
            .append("mebid", getMebid())
            .append("name", getName())
            .append("phone", getPhone())
            .append("cityno", getCityno())
            .append("addr", getAddr())
            .append("zipcode", getZipcode())
            .append("addrsta", getAddrsta())
            .append("createTime", getCreateTime())
            .append("createBy", getCreateBy())
            .append("updateTime", getUpdateTime())
            .append("updateBy", getUpdateBy())
            .toString();
    }
}
