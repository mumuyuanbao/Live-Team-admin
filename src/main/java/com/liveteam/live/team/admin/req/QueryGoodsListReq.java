package com.liveteam.live.team.admin.req;


/**
 * 作者：木木豹
 * 时间2019-10-10 11:59
 * 描述：查询商品列表VO
 */
public class QueryGoodsListReq {
//    goodsName,goodsType,goodsOnly,goodsStatus,goodsNew,startGoodsPrice,endGoodsPrice
    private  String goodsName;
    private Integer goodsType;
    private  Integer goodsOnly;
    private  Integer goodsStatus;
    private  Integer goodsNew;
    private  Long startGoodsPrice;
    private Long endGoodsPrice;


    public String getGoodsName() {
        return goodsName;
    }

    public void setGoodsName(String goodsName) {
        this.goodsName = goodsName;
    }

    public Integer getGoodsType() {
        return goodsType;
    }

    public void setGoodsType(Integer goodsType) {
        this.goodsType = goodsType;
    }

    public Integer getGoodsOnly() {
        return goodsOnly;
    }

    public void setGoodsOnly(Integer goodsOnly) {
        this.goodsOnly = goodsOnly;
    }

    public Integer getGoodsStatus() {
        return goodsStatus;
    }

    public void setGoodsStatus(Integer goodsStatus) {
        this.goodsStatus = goodsStatus;
    }

    public Integer getGoodsNew() {
        return goodsNew;
    }

    public void setGoodsNew(Integer goodsNew) {
        this.goodsNew = goodsNew;
    }

    public Long getStartGoodsPrice() {
        return startGoodsPrice;
    }

    public void setStartGoodsPrice(Long startGoodsPrice) {
        this.startGoodsPrice = startGoodsPrice;
    }

    public Long getEndGoodsPrice() {
        return endGoodsPrice;
    }

    public void setEndGoodsPrice(Long endGoodsPrice) {
        this.endGoodsPrice = endGoodsPrice;
    }

    @Override
    public String toString() {
        return "QueryGoodsListReq{" +
                "goodsName='" + goodsName + '\'' +
                ", goodsType=" + goodsType +
                ", goodsOnly=" + goodsOnly +
                ", goodsStatus=" + goodsStatus +
                ", goodsNew=" + goodsNew +
                ", startGoodsPrice=" + startGoodsPrice +
                ", endGoodsPrice=" + endGoodsPrice +
                '}';
    }
}
