package com.ruoyi.kmps.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 【请填写功能名称】对象 ord_order
 * 
 * @author ruoyi
 * @date 2020-06-06
 */
public class OrdOrder extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 自动编号 */
    private Long id;

    /** 订单编号 */
    @Excel(name = "订单编号")
    private String orderSl;

    /** 订单序列号 */
    @Excel(name = "订单序列号")
    private Long orderNum;

    /** 价格 */
    @Excel(name = "价格")
    private Double price;

    /** 大厦id */
    @Excel(name = "大厦id")
    private Long edificeId;

    /** 骑手id */
    @Excel(name = "骑手id")
    private Long putinId;

    /** 骑手电话 */
    @Excel(name = "骑手电话")
    private String putinPhone;

    /** 分拣员id */
    @Excel(name = "分拣员id")
    private Long sortId;

    /** 送货员id */
    @Excel(name = "送货员id")
    private Long deliveryId;

    /** 送货员电话 */
    @Excel(name = "送货员电话")
    private String deliveryPhone;

    /** 分拣时间 */
    @Excel(name = "分拣时间")
    private Long sorTime;

    /** 取货时间 */
    @Excel(name = "取货时间")
    private Long pickupTime;

    /** 送达时间 */
    @Excel(name = "送达时间")
    private Long finshTime;

    /** 取消时间 */
    @Excel(name = "取消时间")
    private Long closeTime;

    /** 取消原因 */
    @Excel(name = "取消原因")
    private String closeDesc;

    /** 下单时间 */
    @Excel(name = "下单时间")
    private Long orderTime;

    /** 支付时间 */
    @Excel(name = "支付时间")
    private Long payTime;

    /** 预计自动关闭时间 */
    @Excel(name = "预计自动关闭时间")
    private Long autocloseTime;

    /** 支付方式 */
    @Excel(name = "支付方式")
    private Integer payMode;

    /** 商品件数 */
    @Excel(name = "商品件数")
    private Integer goodsNum;

    /** 下单客户端 */
    @Excel(name = "下单客户端")
    private Integer orderClt;

    /** 第三方品牌名称 */
    @Excel(name = "第三方品牌名称")
    private String thirdName;

    /** 第三方订单号 */
    @Excel(name = "第三方订单号")
    private String thirdNum;

    /** 第三方平台取货地址 */
    @Excel(name = "第三方平台取货地址")
    private String thirdTakeAddr;

    /** 第三方平台送货地址 */
    @Excel(name = "第三方平台送货地址")
    private String thirdGiveAddr;

    /** 顾客期望送达时间 */
    @Excel(name = "顾客期望送达时间")
    private Long expectTime;

    /** 第三方订单截图 */
    @Excel(name = "第三方订单截图")
    private String orderImgPath;

    /** 楼层 */
    @Excel(name = "楼层")
    private Integer floor;

    /** 状态 */
    @Excel(name = "状态")
    private Integer orderSta;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setOrderSl(String orderSl) 
    {
        this.orderSl = orderSl;
    }

    public String getOrderSl() 
    {
        return orderSl;
    }
    public void setOrderNum(Long orderNum) 
    {
        this.orderNum = orderNum;
    }

    public Long getOrderNum() 
    {
        return orderNum;
    }
    public void setPrice(Double price) 
    {
        this.price = price;
    }

    public Double getPrice() 
    {
        return price;
    }
    public void setEdificeId(Long edificeId) 
    {
        this.edificeId = edificeId;
    }

    public Long getEdificeId() 
    {
        return edificeId;
    }
    public void setPutinId(Long putinId) 
    {
        this.putinId = putinId;
    }

    public Long getPutinId() 
    {
        return putinId;
    }
    public void setPutinPhone(String putinPhone) 
    {
        this.putinPhone = putinPhone;
    }

    public String getPutinPhone() 
    {
        return putinPhone;
    }
    public void setSortId(Long sortId) 
    {
        this.sortId = sortId;
    }

    public Long getSortId() 
    {
        return sortId;
    }
    public void setDeliveryId(Long deliveryId) 
    {
        this.deliveryId = deliveryId;
    }

    public Long getDeliveryId() 
    {
        return deliveryId;
    }
    public void setDeliveryPhone(String deliveryPhone) 
    {
        this.deliveryPhone = deliveryPhone;
    }

    public String getDeliveryPhone() 
    {
        return deliveryPhone;
    }
    public void setSorTime(Long sorTime) 
    {
        this.sorTime = sorTime;
    }

    public Long getSorTime() 
    {
        return sorTime;
    }
    public void setPickupTime(Long pickupTime) 
    {
        this.pickupTime = pickupTime;
    }

    public Long getPickupTime() 
    {
        return pickupTime;
    }
    public void setFinshTime(Long finshTime) 
    {
        this.finshTime = finshTime;
    }

    public Long getFinshTime() 
    {
        return finshTime;
    }
    public void setCloseTime(Long closeTime) 
    {
        this.closeTime = closeTime;
    }

    public Long getCloseTime() 
    {
        return closeTime;
    }
    public void setCloseDesc(String closeDesc) 
    {
        this.closeDesc = closeDesc;
    }

    public String getCloseDesc() 
    {
        return closeDesc;
    }
    public void setOrderTime(Long orderTime) 
    {
        this.orderTime = orderTime;
    }

    public Long getOrderTime() 
    {
        return orderTime;
    }
    public void setPayTime(Long payTime) 
    {
        this.payTime = payTime;
    }

    public Long getPayTime() 
    {
        return payTime;
    }
    public void setAutocloseTime(Long autocloseTime) 
    {
        this.autocloseTime = autocloseTime;
    }

    public Long getAutocloseTime() 
    {
        return autocloseTime;
    }
    public void setPayMode(Integer payMode) 
    {
        this.payMode = payMode;
    }

    public Integer getPayMode() 
    {
        return payMode;
    }
    public void setGoodsNum(Integer goodsNum) 
    {
        this.goodsNum = goodsNum;
    }

    public Integer getGoodsNum() 
    {
        return goodsNum;
    }
    public void setOrderClt(Integer orderClt) 
    {
        this.orderClt = orderClt;
    }

    public Integer getOrderClt() 
    {
        return orderClt;
    }
    public void setThirdName(String thirdName) 
    {
        this.thirdName = thirdName;
    }

    public String getThirdName() 
    {
        return thirdName;
    }
    public void setThirdNum(String thirdNum) 
    {
        this.thirdNum = thirdNum;
    }

    public String getThirdNum() 
    {
        return thirdNum;
    }
    public void setThirdTakeAddr(String thirdTakeAddr) 
    {
        this.thirdTakeAddr = thirdTakeAddr;
    }

    public String getThirdTakeAddr() 
    {
        return thirdTakeAddr;
    }
    public void setThirdGiveAddr(String thirdGiveAddr) 
    {
        this.thirdGiveAddr = thirdGiveAddr;
    }

    public String getThirdGiveAddr() 
    {
        return thirdGiveAddr;
    }
    public void setExpectTime(Long expectTime) 
    {
        this.expectTime = expectTime;
    }

    public Long getExpectTime() 
    {
        return expectTime;
    }
    public void setOrderImgPath(String orderImgPath) 
    {
        this.orderImgPath = orderImgPath;
    }

    public String getOrderImgPath() 
    {
        return orderImgPath;
    }
    public void setFloor(Integer floor) 
    {
        this.floor = floor;
    }

    public Integer getFloor() 
    {
        return floor;
    }
    public void setOrderSta(Integer orderSta) 
    {
        this.orderSta = orderSta;
    }

    public Integer getOrderSta() 
    {
        return orderSta;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("orderSl", getOrderSl())
            .append("orderNum", getOrderNum())
            .append("price", getPrice())
            .append("edificeId", getEdificeId())
            .append("putinId", getPutinId())
            .append("putinPhone", getPutinPhone())
            .append("sortId", getSortId())
            .append("deliveryId", getDeliveryId())
            .append("deliveryPhone", getDeliveryPhone())
            .append("sorTime", getSorTime())
            .append("pickupTime", getPickupTime())
            .append("finshTime", getFinshTime())
            .append("closeTime", getCloseTime())
            .append("closeDesc", getCloseDesc())
            .append("orderTime", getOrderTime())
            .append("payTime", getPayTime())
            .append("autocloseTime", getAutocloseTime())
            .append("payMode", getPayMode())
            .append("goodsNum", getGoodsNum())
            .append("orderClt", getOrderClt())
            .append("thirdName", getThirdName())
            .append("thirdNum", getThirdNum())
            .append("thirdTakeAddr", getThirdTakeAddr())
            .append("thirdGiveAddr", getThirdGiveAddr())
            .append("expectTime", getExpectTime())
            .append("orderImgPath", getOrderImgPath())
            .append("floor", getFloor())
            .append("orderSta", getOrderSta())
            .toString();
    }
}
