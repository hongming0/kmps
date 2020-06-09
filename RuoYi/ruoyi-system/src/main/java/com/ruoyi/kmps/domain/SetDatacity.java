package com.ruoyi.kmps.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 省市数据对象 set_datacity
 * 
 * @author ruoyi
 * @date 2020-06-06
 */
public class SetDatacity extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 编号 */
    private String idno;

    /** 省名称 */
    @Excel(name = "省名称")
    private String name;

    /** 地图坐标范围值 */
    @Excel(name = "地图坐标范围值")
    private String map;

    /** 缩写城市名称 */
    @Excel(name = "缩写城市名称")
    private String shorname;

    /** 全拼字符 */
    @Excel(name = "全拼字符")
    private String pinyin;

    /** 城市拼音缩写 */
    @Excel(name = "城市拼音缩写")
    private String shorter;

    /** 首字母索引 */
    @Excel(name = "首字母索引")
    private String initial;

    /** 活动热门城市标志 */
    @Excel(name = "活动热门城市标志")
    private Integer hotflag;

    public void setIdno(String idno) 
    {
        this.idno = idno;
    }

    public String getIdno() 
    {
        return idno;
    }
    public void setName(String name) 
    {
        this.name = name;
    }

    public String getName() 
    {
        return name;
    }
    public void setMap(String map) 
    {
        this.map = map;
    }

    public String getMap() 
    {
        return map;
    }
    public void setShorname(String shorname) 
    {
        this.shorname = shorname;
    }

    public String getShorname() 
    {
        return shorname;
    }
    public void setPinyin(String pinyin) 
    {
        this.pinyin = pinyin;
    }

    public String getPinyin() 
    {
        return pinyin;
    }
    public void setShorter(String shorter) 
    {
        this.shorter = shorter;
    }

    public String getShorter() 
    {
        return shorter;
    }
    public void setInitial(String initial) 
    {
        this.initial = initial;
    }

    public String getInitial() 
    {
        return initial;
    }
    public void setHotflag(Integer hotflag) 
    {
        this.hotflag = hotflag;
    }

    public Integer getHotflag() 
    {
        return hotflag;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("idno", getIdno())
            .append("name", getName())
            .append("map", getMap())
            .append("shorname", getShorname())
            .append("pinyin", getPinyin())
            .append("shorter", getShorter())
            .append("initial", getInitial())
            .append("hotflag", getHotflag())
            .toString();
    }
}
