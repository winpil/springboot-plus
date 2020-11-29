layui.define(['table', 'cardApi'], function(exports) {
    var cardApi = layui.cardApi;
    var table=layui.table;
    var view = {
        init:function(){
        },
        delBatch:function(){
            var data = Common.getMoreDataFromTable(table,"cardTable");
            if(data==null){
                return ;
            }
            Common.openConfirm("确认要删除这些卡?",function(){
            var ids =Common.concatBatchId(data,"id");
            cardApi.del(ids,function(){
                Common.info("删除成功");
                    dataReload();
                })
            })
        }
    }
    exports('del',view);
	
});