queryByCondition
===


    select 
    @pageTag(){
    t.*
    @}
    from dh_card t
    where 1=1  
    @//数据权限，该sql语句功能点  
    and #function("card.query")#
    @if(!isEmpty(cardNumber)){
        and  t.CARD_NUMBER =#cardNumber#
    @}
    @if(!isEmpty(status)){
        and  t.STATUS =#status#
    @}
    
    
    

batchDelDhCardByIds
===

* 批量逻辑删除

    update dh_card set del_flag = 1 where ID  in( #join(ids)#)
    
