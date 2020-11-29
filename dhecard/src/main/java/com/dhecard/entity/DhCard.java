package com.dhecard.entity;

import java.util.Date;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Null;

import org.beetl.sql.core.annotatoin.AutoID;
import org.beetl.sql.core.annotatoin.SeqID;

import com.ibeetl.admin.core.util.ValidateConfig;

import org.beetl.sql.core.TailBean;
import java.math.*;

import com.ibeetl.admin.core.annotation.Dict;
import com.ibeetl.admin.core.entity.BaseEntity;

/* 
* 
* gen by Spring Boot2 Admin 2020-11-29
*/
public class DhCard extends BaseEntity{

    @NotNull(message = "ID不能为空", groups =ValidateConfig.UPDATE.class)
    @SeqID(name = ORACLE_CORE_SEQ_NAME)
    @AutoID	
	
    private Integer id ;
	
	
    private String cardNumber ;
	
    //余额
	
    private Double money ;
	
    //状态：1：可用，2：挂失，3：销卡
	
    @Dict(type="enable")
    private Integer status ;
	
	
    private Date createTime ;
	
	
    private Date updateTime ;
	
    public DhCard()
    {
    }

    public Integer getId(){
	    return  id;
    }
    public void setId(Integer id){
        this.id = id;
    }

    public String getCardNumber(){
	    return  cardNumber;
    }
    public void setCardNumber(String cardNumber){
        this.cardNumber = cardNumber;
    }

    /**余额
    *@return 
    */
    public Double getMoney(){
	    return  money;
    }
    /**余额
    *@param  d
    */
    public void setMoney(Double d){
        this.money = d;
    }

    /**状态：1：可用，2：挂失，3：销卡
    *@return 
    */
    public Integer getStatus(){
	    return  status;
    }
    /**状态：1：可用，2：挂失，3：销卡
    *@param  status
    */
    public void setStatus(Integer status){
        this.status = status;
    }

    public Date getCreateTime(){
	    return  createTime;
    }
    public void setCreateTime(Date createTime){
        this.createTime = createTime;
    }

    public Date getUpdateTime(){
	    return  updateTime;
    }
    public void setUpdateTime(Date updateTime){
        this.updateTime = updateTime;
    }


}
