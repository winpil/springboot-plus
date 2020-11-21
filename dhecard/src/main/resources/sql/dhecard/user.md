queryByCondition
===


    select 
    @pageTag(){
    t.*
    @}
    from dh_user t
    where 1=1  
    @//数据权限，该sql语句功能点  
    and #function("user.query")#
    @if(!isEmpty(name)){
        and  t.NAME =#name#
    @}
    @if(!isEmpty(number)){
        and  t.NUMBER =#number#
    @}
    @if(!isEmpty(cardNumber)){
        and  t.CARD_NUMBER =#cardNumber#
    @}
    @if(!isEmpty(enable)){
        and  t.ENABLE =#enable#
    @}
    
    
    

batchDelDhUserByIds
===

* 批量逻辑删除

    update dh_user set del_flag = 1 where ID  in( #join(ids)#)
    
