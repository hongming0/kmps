package com.ruoyi.kmps.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 手机号变更记录对象 meb_phonerd
 * 
 * @author ruoyi
 * @date 2020-06-10
 */
public class MebPhonerd extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 编号 */
    private Long id;

    /** 平台用户id */
    @Excel(name = "平台用户id")
    private Long mebid;

    /** 原手机号 */
    @Excel(name = "原手机号")
    private String oldphone;

    /** 新手机号 */
    @Excel(name = "新手机号")
    private String newphone;

    /** 状态 */
    @Excel(name = "状态")
    private Integer phonerdsta;

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
    public void setOldphone(String oldphone) 
    {
        this.oldphone = oldphone;
    }

    public String getOldphone() 
    {
        return oldphone;
    }
    public void setNewphone(String newphone) 
    {
        this.newphone = newphone;
    }

    public String getNewphone() 
    {
        return newphone;
    }
    public void setPhonerdsta(Integer phonerdsta) 
    {
        this.phonerdsta = phonerdsta;
    }

    public Integer getPhonerdsta() 
    {
        return phonerdsta;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("mebid", getMebid())
            .append("oldphone", getOldphone())
            .append("newphone", getNewphone())
            .append("createTime", getCreateTime())
            .append("updateTime", getUpdateTime())
            .append("phonerdsta", getPhonerdsta())
            .toString();
    }
}
