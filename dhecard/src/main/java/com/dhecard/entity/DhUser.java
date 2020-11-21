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
* gen by Spring Boot2 Admin 2020-11-21
*/
public class DhUser extends BaseEntity{

    @NotNull(message = "ID不能为空", groups =ValidateConfig.UPDATE.class)
    @SeqID(name = ORACLE_CORE_SEQ_NAME)
    @AutoID	
	
    private Integer id ;
	
    //项目
	
    private String name ;
	
    //学号\工号
	
    private String number ;
	
    //卡号
	
    private String cardNumber ;
	
    //T:教师，S：学生
	
    @Dict(type="user_type")
    private String type ;
	
    //1：男，2：女
	
    @Dict(type="gender")
    private Integer gender ;
	
    //1:可用，0：不可用
	
    @Dict(type="enable")
    private Integer enable ;
	
    //班级ID
	
    private Integer classId ;
	
    //创建时间
	
    private Date createTime ;
	
    //更新时间
	
    private Date updateTime ;
	
    public DhUser()
    {
    }

    public Integer getId(){
	    return  id;
    }
    public void setId(Integer id){
        this.id = id;
    }

    /**项目
    *@return 
    */
    public String getName(){
	    return  name;
    }
    /**项目
    *@param  name
    */
    public void setName(String name){
        this.name = name;
    }

    /**学号\工号
    *@return 
    */
    public String getNumber(){
	    return  number;
    }
    /**学号\工号
    *@param  number
    */
    public void setNumber(String number){
        this.number = number;
    }

    /**卡号
    *@return 
    */
    public String getCardNumber(){
	    return  cardNumber;
    }
    /**卡号
    *@param  cardNumber
    */
    public void setCardNumber(String cardNumber){
        this.cardNumber = cardNumber;
    }

    /**T:教师，S：学生
    *@return 
    */
    public String getType(){
	    return  type;
    }
    /**T:教师，S：学生
    *@param  type
    */
    public void setType(String type){
        this.type = type;
    }

    /**1：男，2：女
    *@return 
    */
    public Integer getGender(){
	    return  gender;
    }
    /**1：男，2：女
    *@param  gender
    */
    public void setGender(Integer gender){
        this.gender = gender;
    }

    /**1:可用，0：不可用
    *@return 
    */
    public Integer getEnable(){
	    return  enable;
    }
    /**1:可用，0：不可用
    *@param  enable
    */
    public void setEnable(Integer enable){
        this.enable = enable;
    }

    /**班级ID
    *@return 
    */
    public Integer getClassId(){
	    return  classId;
    }
    /**班级ID
    *@param  classId
    */
    public void setClassId(Integer classId){
        this.classId = classId;
    }

    /**创建时间
    *@return 
    */
    public Date getCreateTime(){
	    return  createTime;
    }
    /**创建时间
    *@param  createTime
    */
    public void setCreateTime(Date createTime){
        this.createTime = createTime;
    }

    /**更新时间
    *@return 
    */
    public Date getUpdateTime(){
	    return  updateTime;
    }
    /**更新时间
    *@param  updateTime
    */
    public void setUpdateTime(Date updateTime){
        this.updateTime = updateTime;
    }


}
