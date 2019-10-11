package com.liveteam.live.team.admin.service.serviceimpl;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.liveteam.live.team.admin.common.enums.EnumResult;
import com.liveteam.live.team.admin.common.result.PageVO;
import com.liveteam.live.team.admin.common.result.ResultVO;
import com.liveteam.live.team.admin.entity.Goods;
import com.liveteam.live.team.admin.entity.GoodsExample;
import com.liveteam.live.team.admin.entity.GoodsType;
import com.liveteam.live.team.admin.entity.GoodsTypeExample;
import com.liveteam.live.team.admin.mapper.GoodsMapper;
import com.liveteam.live.team.admin.mapper.GoodsTypeMapper;
import com.liveteam.live.team.admin.req.QueryGoodsListReq;
import com.liveteam.live.team.admin.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.rmi.MarshalledObject;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 作者：木木豹
 * 时间2019-10-10 11:14
 * 描述：
 */
@Service
public class GoodsServiceImpl implements GoodsService {
    @Autowired
    private GoodsTypeMapper goodsTypeMapper;

    @Autowired
    private GoodsMapper goodsMapper;
    //查找商品分类信息
    @Override
    public ResultVO<List<GoodsType>> queryGoodsType() {
        ResultVO<List<GoodsType>> result = new ResultVO<>();
        GoodsTypeExample goodsTypeExample = new GoodsTypeExample();
        GoodsTypeExample.Criteria criteria = goodsTypeExample.createCriteria();
        goodsTypeExample.setOrderByClause("sort");
        criteria.andStatusEqualTo((byte) 0);
        List<GoodsType> goodsTypes = goodsTypeMapper.selectByExample(goodsTypeExample);
        result.setData(goodsTypes);
        result.setCode(EnumResult.SUCCESS.getCode());
        result.setMsg(EnumResult.SUCCESS.getMsg());
        return result;
    }

    /**
     * 根据调解查询商品
     * @param req
     * @return
     */
    @Override
    public ResultVO<PageVO<Goods>> queryGoodsList(Map<String,Object> req, Integer pageNum, Integer pageSize) {
        ResultVO<PageVO<Goods>> result = new ResultVO<>();
        PageVO<Goods> pageVO = new PageVO<>();
        if (pageNum==null){
            pageNum=1;
        }
        if (pageSize==null){
            pageSize=20;
        }
        PageHelper.startPage(pageNum,pageSize);
        List<Goods> list =  goodsMapper.selectByMap(req);
        PageInfo<Goods> pageInfo = new PageInfo<>(list);
        pageVO.setData(list);
        pageVO.savePageinfo(pageInfo);
        result.setCode(EnumResult.SUCCESS.getCode());
        result.setMsg(EnumResult.SUCCESS.getMsg());
        result.setData(pageVO);
        return result;
    }
}
