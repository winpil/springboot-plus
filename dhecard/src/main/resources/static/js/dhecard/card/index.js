layui.define([ 'form', 'laydate', 'table' ], function(exports) {
    var form = layui.form;
    var laydate = layui.laydate;
    var table = layui.table;
    var cardTable = null;
    var view ={
        init:function(){
            this.initTable();
            this.initSearchForm();
            this.initToolBar();
            window.dataReload = function(){
                Lib.doSearchForm($("#searchForm"),cardTable)
            }
        },
        initTable:function(){
            cardTable = table.render({
                elem : '#cardTable',
                height : Lib.getTableHeight(1),
                method : 'post',
                url : Common.ctxPath + '/dhecard/card/list.json' // 数据接口
                ,page : Lib.tablePage // 开启分页
                ,limit : 10,
                cols : [ [ // 表头
                {
                type : 'checkbox',
                fixed:'left',
                }, 
                {
                field : 'id', 
                title : 'id',
                fixed:'left',
                width : 100
                }, 
                {
                field : 'cardNumber', 
                title : 'cardNumber',
                width : 100
                }, 
                {
                field : 'money', 
                title : 'money',
                width : 100
                }, 
                {
                field : 'statusText', //数据字典类型为 enable
                title : 'status',
                width : 100
                }, 
                {
                field : 'createTime', 
                title : 'createTime',
                width : 100
                }, 
                {
                field : 'updateTime', 
                title : 'updateTime',
                width : 100
                } 
        
                ] ]
        
            });
            
            table.on('checkbox(cardTable)', function(obj){
                var card = obj.data;
                if(obj.checked){
                   //按钮逻辑Lib.buttonEnable()
                }else{
                    
                }
             })
        },
        	
        initSearchForm:function(){
            Lib.initSearchForm( $("#searchForm"),cardTable,form);
        },
        initToolBar:function(){
            toolbar = {
                add : function() { // 获取选中数据
                    var url = "/dhecard/card/add.do";
                    Common.openDlg(url,"卡管理>新增");
                },
                edit : function() { // 获取选中数目
                    var data = Common.getOneFromTable(table,"cardTable");
                    if(data==null){
                        return ;
                    }
                    var url = "/dhecard/card/edit.do?id="+data.id;
                    Common.openDlg(url,"卡管理>"+data.id+">编辑");
                },
                del : function() { 
                    layui.use(['del'], function(){
                        var delView = layui.del
                        delView.delBatch();
                    });
                }
            };
            $('.ext-toolbar').on('click', function() {
                var type = $(this).data('type');
                toolbar[type] ? toolbar[type].call(this) : '';
            });
        }
	}
    exports('index',view);
	
});