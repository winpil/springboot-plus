layui.define([ 'form', 'laydate', 'table','userApi'], function(exports) {
    var form = layui.form;
    var userApi = layui.userApi;
    var index = layui.index;
    var view = {
        init:function(){
	        Lib.initGenrealForm($("#fakaForm"),form);
	        this.initSubmit();
        },
        initSubmit:function(){
            $("#fakaButton").click(function(){
            	form.on('submit(form)', function(){
	               userApi.faka($('#fakaForm'),function(){
	                   parent.window.dataReload();
	                   Common.info("发卡成功");
	                   Lib.closeFrame();
	                });
	            });
            });
            
            $("#fakaButton-cancel").click(function(){
                Lib.closeFrame();
            });
        }   
    }
    exports('faka',view);
});