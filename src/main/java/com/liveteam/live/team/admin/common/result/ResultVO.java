package com.liveteam.live.team.admin.common.result;


import com.liveteam.live.team.admin.common.enums.EnumResult;

/**
 * 
 * @author Administrator
 * @date 2018/09/30
 */
public class ResultVO<T> {

    /**
     * 结果码
     */
    private Integer code;

    /**
     * 消息
     */
    private String msg;

    /**
     * 
     */
    private T data;

    public ResultVO() {
        super();
    }

    public ResultVO(Integer code, String msg) {
        super();
        this.code = code;
        this.msg = msg;
    }

    public ResultVO(Integer code, String msg, T data) {
        super();
        this.code = code;
        this.msg = msg;
        this.data = data;
    }


    public static ResultVO ok(Object obj) {
        ResultVO r = new ResultVO();
        r.setCode(EnumResult.SUCCESS.getCode());
        r.setMsg(EnumResult.SUCCESS.getMsg());
        r.setData(obj);
        return r;
    }

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public T getData() {
        return data;
    }

    public void setData(T data) {
        this.data = data;
    }

}
