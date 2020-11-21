package com.dhecard.web.query;

import com.ibeetl.admin.core.annotation.Query;
import com.ibeetl.admin.core.util.enums.CoreDictType;
import com.ibeetl.admin.core.web.query.PageParam;
import java.util.Date;
/**
 *User查询
 */
public class DhUserQuery extends PageParam {
    @Query(name = "姓名", display = true)        
    private String name;
    @Query(name = "编号", display = true)        
    private String number;
    @Query(name = "卡号", display = true)        
    private String cardNumber;
    @Query(name = "是否可用", display = true,type=Query.TYPE_DICT,dict="enable")
    private Integer enable;
    public String getName(){
        return  name;
    }
    public void setName(String name ){
        this.name = name;
    }
    public String getNumber(){
        return  number;
    }
    public void setNumber(String number ){
        this.number = number;
    }
    public String getCardNumber(){
        return  cardNumber;
    }
    public void setCardNumber(String cardNumber ){
        this.cardNumber = cardNumber;
    }
    public Integer getEnable(){
        return  enable;
    }
    public void setEnable(Integer enable ){
        this.enable = enable;
    }
 
}
