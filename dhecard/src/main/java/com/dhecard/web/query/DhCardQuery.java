package com.dhecard.web.query;

import com.ibeetl.admin.core.annotation.Query;
import com.ibeetl.admin.core.util.enums.CoreDictType;
import com.ibeetl.admin.core.web.query.PageParam;
import java.util.Date;
/**
 *卡查询
 */
public class DhCardQuery extends PageParam {
    @Query(name = "cardNumber", display = true)        
    private String cardNumber;
    @Query(name = "status", display = true,type=Query.TYPE_DICT,dict="enable")
    private Integer status;
    public String getCardNumber(){
        return  cardNumber;
    }
    public void setCardNumber(String cardNumber ){
        this.cardNumber = cardNumber;
    }
    public Integer getStatus(){
        return  status;
    }
    public void setStatus(Integer status ){
        this.status = status;
    }
 
}
