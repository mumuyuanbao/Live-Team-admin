package com.liveteam.live.team.admin.common.result;


/**
 * 
 * @author Administrator
 * @date 2018/10/08
 */
public class SimpleResultVO {

    /**
     * 结果码
     */
    private Integer code;

    /**
     * 消息
     */
    private String msg;


    public static SimpleResultVO ok() {
        SimpleResultVO r = new SimpleResultVO();
        r.setCode(0);
        r.setMsg("操作成功");
        return r;
    }

    public static SimpleResultVO error() {
        SimpleResultVO r = new SimpleResultVO();
        r.setCode(-1);
        r.setMsg("操作失败");
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
}
