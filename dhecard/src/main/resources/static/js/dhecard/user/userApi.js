/*访问后台的代码*/
layui.define([], function(exports) {
    var api={
            updateUser:function(form,callback){
                Lib.submitForm("/dhecard/user/update.json",form,{},callback)
            },
            addUser:function(form,callback){
                Lib.submitForm("/dhecard/user/add.json",form,{},callback)
            },
            del:function(ids,callback){
                Common.post("/dhecard/user/delete.json",{"ids":ids},function(){
                    callback();
                })
            }
		
    };
    exports('userApi',api);
});