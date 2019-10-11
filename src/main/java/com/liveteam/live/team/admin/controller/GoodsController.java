package com.liveteam.live.team.admin.controller;


import com.liveteam.live.team.admin.common.result.PageVO;
import com.liveteam.live.team.admin.common.result.ResultVO;
import com.liveteam.live.team.admin.entity.Goods;
import com.liveteam.live.team.admin.entity.GoodsType;
import com.liveteam.live.team.admin.req.QueryGoodsListReq;
import com.liveteam.live.team.admin.service.GoodsService;
import org.bouncycastle.ocsp.Req;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 作者：木木豹
 * 时间2019-10-09 19:56
 * 描述：
 */
@Controller
@RequestMapping("goods")
public class GoodsController {


    @Autowired
    private GoodsService goodsService;


    @RequestMapping("index")
    public String getIndex() {
        return "index";
    }

    @RequestMapping("chanpinzhuanqu")
    public String getchanpinzhuanqu( Model model,Integer pageNum,Integer pageSize) {


        ResultVO<List<GoodsType>> listResultVO = goodsService.queryGoodsType();
        Map<String, Object> maps = new HashMap();
        ResultVO<PageVO<Goods>> pageVOResultVO = goodsService.queryGoodsList(maps, pageNum, pageSize);
        model.addAttribute("pageGoodsList",pageVOResultVO.getData().getData());
        model.addAttribute("pagesthis",pageVOResultVO.getData());
        model.addAttribute("typeList",listResultVO.getData());
        return "chanpinzhuanqu";
    }

    /**
     * 返回商品分类
     *
     * @return
     */
    @RequestMapping("queryGoodsType")
    @ResponseBody
    public ResultVO<List<GoodsType>> queryGoodsType() {
        return goodsService.queryGoodsType();
    }


    /**
     * 查询商品
     *
     * @return
     */
//    @RequestMapping(value = "queryGoodsList", method = RequestMethod.POST)
//    @ResponseBody
//    public ResultVO<PageVO<Goods>>queryGoodsList(@RequestBody QueryGoodsListReq data, Integer pageNum, Integer pageSize) {
//        Map<String, Object> map = new HashMap();
//        map.put("goodsName", data.getGoodsName());
//        map.put("goodsNew", data.getGoodsNew());
//        map.put("goodsOnly", data.getGoodsOnly());
//        map.put("goodsStatus", data.getGoodsStatus());
//        map.put("goodsType", data.getGoodsType());
//        map.put("startPrice", data.getStartGoodsPrice());
//        map.put("endPrice", data.getEndGoodsPrice());
//        return goodsService.queryGoodsList(map,pageNum,pageSize);
//    }
    /**
     * 查询商品
     * @RequestMapping("/map")
     *    public String retMap(Map<String,Object> map){
     *
     *         map.put("name","map return");
     *
     *         return "show";
     *    }
     * @return
     */
    @RequestMapping(value = "queryGoodsList", method = RequestMethod.POST)
    public String queryGoodsList(QueryGoodsListReq data, Integer pageNum, Integer pageSize, Model model, Map<String,Object> map) {

        Map<String, Object> maps = new HashMap();
        maps.put("goodsName", data.getGoodsName());
        maps.put("goodsNew", data.getGoodsNew());
        maps.put("goodsOnly", data.getGoodsOnly());
        maps.put("goodsStatus", data.getGoodsStatus());
        maps.put("goodsType", data.getGoodsType());
        maps.put("startPrice", data.getStartGoodsPrice());
        maps.put("endPrice", data.getEndGoodsPrice());
        ResultVO<PageVO<Goods>> pageVOResultVO = goodsService.queryGoodsList(maps, pageNum, pageSize);
        model.addAttribute("pageGoodsList",pageVOResultVO.getData().getData());
        model.addAttribute("pagesthis",pageVOResultVO.getData());
        map.put("goodsName", data.getGoodsName());
        map.put("goodsNew", data.getGoodsNew());
        map.put("goodsOnly", data.getGoodsOnly());
        map.put("goodsStatus", data.getGoodsStatus());
        map.put("goodsType", data.getGoodsType());
        map.put("startPrice", data.getStartGoodsPrice());
        map.put("endPrice", data.getEndGoodsPrice());

        ResultVO<List<GoodsType>> listResultVO = goodsService.queryGoodsType();
        model.addAttribute("typeList",listResultVO.getData());

        return "chanpinzhuanqu";
    }


}
