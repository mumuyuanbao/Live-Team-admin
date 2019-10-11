package com.liveteam.live.team.admin.service;

import com.liveteam.live.team.admin.common.result.PageVO;
import com.liveteam.live.team.admin.common.result.ResultVO;
import com.liveteam.live.team.admin.entity.Goods;
import com.liveteam.live.team.admin.entity.GoodsType;
import com.liveteam.live.team.admin.req.QueryGoodsListReq;

import java.util.List;
import java.util.Map;

public interface GoodsService {
    ResultVO<List<GoodsType>> queryGoodsType();

    ResultVO<PageVO<Goods>> queryGoodsList(Map<String,Object> req, Integer pageNum, Integer pageSize);
}
