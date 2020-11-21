layui.define([ 'form', 'laydate', 'table' ], function(exports) {
    var form = layui.form;
    var laydate = layui.laydate;
    var table = layui.table;
    var userTable = null;
    var view ={
        init:function(){
            this.initTable();
            this.initSearchForm();
            this.initToolBar();
            window.dataReload = function(){
                Lib.doSearchForm($("#searchForm"),userTable)
            }
        },
        initTable:function(){
            userTable = table.render({
                elem : '#userTable',
                height : Lib.getTableHeight(1),
                method : 'post',
                url : Common.ctxPath + '/dhecard/user/list.json' // 数据接口
                ,page : Lib.tablePage // 开启分页
                ,limit : 10,
                cols : [ [ // 表头
                {
                type : 'checkbox',
                fixed:'left',
                }, 
               /* {
                field : 'id', 
                title : 'id',
                fixed:'left',
                width : 100
                }, */
                {
                field : 'name', 
                title : '姓名',
                width : 150
                }, 
                {
                field : 'number', 
                title : '编号',
                width : 250
                }, 
                {
                field : 'cardNumber', 
                title : '卡号',
                width : 250
                }, 
                {
                field : 'typeText', //数据字典类型为 user_type
                title : '用户类型',
                width : 100
                }, 
                {
                field : 'genderText', //数据字典类型为 gender
                title : '性别',
                width : 80
                }, 
                {
                field : 'enableText', //数据字典类型为 enable
                title : '是否可用',
                width : 100
                }, 
                /*{
                field : 'classId', 
                title : '班级',
                width : 100
                }, */
                {
                field : 'createTime', 
                title : '创建时间',
                width : 305
                }/*, 
                {
                field : 'updateTime', 
                title : '更新时间',
                width : 100
                } */
        
                ] ]
        
            });
            
            table.on('checkbox(userTable)', function(obj){
                var user = obj.data;
                if(obj.checked){
                   //按钮逻辑Lib.buttonEnable()
                }else{
                    
                }
             })
        },
        	
        initSearchForm:function(){
            Lib.initSearchForm( $("#searchForm"),userTable,form);
        },
        initToolBar:function(){
            toolbar = {
                add : function() { // 获取选中数据
                    var url = "/dhecard/user/add.do";
                    Common.openDlg(url,"User管理>新增");
                },
                edit : function() { // 获取选中数目
                    var data = Common.getOneFromTable(table,"userTable");
                    if(data==null){
                        return ;
                    }
                    var url = "/dhecard/user/edit.do?id="+data.id;
                    Common.openDlg(url,"User管理>"+data.id+">编辑");
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