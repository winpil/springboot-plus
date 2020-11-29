/*访问后台的代码*/
layui.define([], function(exports) {
    var api={
            updateCard:function(form,callback){
                Lib.submitForm("/dhecard/card/update.json",form,{},callback)
            },
            addCard:function(form,callback){
                Lib.submitForm("/dhecard/card/add.json",form,{},callback)
            },
            del:function(ids,callback){
                Common.post("/dhecard/card/delete.json",{"ids":ids},function(){
                    callback();
                })
            }
		
    };
    exports('cardApi',api);
});