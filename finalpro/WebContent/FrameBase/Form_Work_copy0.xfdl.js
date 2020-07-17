(function()
{
    return function()
    {
        if (!this._is_form)
            return;
        
        var obj = null;
        
        this.on_create = function()
        {
            this.set_name("myload");
            this.set_titletext("Form_Work");
            if (Form == this.constructor)
            {
                this._setFormPosition(1800,1890);
            }
            
            // Object(Dataset, ExcelExportObject) Initialize
            obj = new Dataset("review", this);
            obj._setContents("");
            this.addChild(obj.name, obj);
            
            // UI Components Initialize
            obj = new Div("Div00","0","0","1786","2060",null,null,null,null,null,null,this);
            obj.set_taborder("0");
            obj.set_text("Div00");
            this.addChild(obj.name, obj);

            obj = new Grid("reveiwtable","243","745","1287","415",null,null,null,null,null,null,this.Div00.form);
            obj.set_taborder("0");
            obj.set_binddataset("review");
            obj._setContents("<Formats><Format id=\"default\"><Columns><Column size=\"80\"/><Column size=\"158\"/><Column size=\"231\"/><Column size=\"227\"/><Column size=\"104\"/><Column size=\"486\"/></Columns><Rows><Row size=\"24\" band=\"head\"/><Row size=\"24\"/></Rows><Band id=\"head\"><Cell text=\"작성번호\"/><Cell col=\"1\" text=\"작성자아이디\"/><Cell col=\"2\" text=\"리뷰제목\"/><Cell col=\"3\" text=\"작성일\"/><Cell col=\"4\" text=\"조회수\"/><Cell col=\"5\" text=\"리뷰항목\"/></Band><Band id=\"body\"><Cell text=\"bind:num\"/><Cell col=\"1\" text=\"bind:id\"/><Cell col=\"2\" text=\"bind:title\"/><Cell col=\"3\" text=\"bind:rdate\"/><Cell col=\"4\" text=\"bind:hit\"/><Cell col=\"5\" text=\"bind:honame\"/></Band></Format></Formats>");
            this.Div00.addChild(obj.name, obj);

            obj = new Static("Static00","418","630","515","80",null,null,null,null,null,null,this.Div00.form);
            obj.set_taborder("1");
            obj.set_text("게시판 이용 현황");
            obj.set_font("bold 40px/normal \"Gulim\"");
            obj.set_textAlign("center");
            this.Div00.addChild(obj.name, obj);

            obj = new Static("Static01","1008","210","495","80",null,null,null,null,null,null,this.Div00.form);
            obj.set_taborder("2");
            obj.set_text("댓글 작성 현황");
            obj.set_font("bold 40px/normal \"Gulim\"");
            obj.set_textAlign("center");
            this.Div00.addChild(obj.name, obj);

            obj = new Combo("combobox","955","655","125","55",null,null,null,null,null,null,this.Div00.form);
            obj.set_taborder("3");
            obj.set_codecolumn("codecolumn");
            obj.set_datacolumn("datacolumn");
            var Div00_form_combobox_innerdataset = new nexacro.NormalDataset("Div00_form_combobox_innerdataset", obj);
            Div00_form_combobox_innerdataset._setContents("<ColumnInfo><Column id=\"codecolumn\" size=\"256\"/><Column id=\"datacolumn\" size=\"256\"/></ColumnInfo><Rows><Row><Col id=\"codecolumn\">id</Col><Col id=\"datacolumn\">아이디</Col></Row><Row><Col id=\"codecolumn\">title</Col><Col id=\"datacolumn\">제목</Col></Row><Row><Col id=\"codecolumn\">rdate</Col><Col id=\"datacolumn\">작성일</Col></Row></Rows>");
            obj.set_innerdataset(Div00_form_combobox_innerdataset);
            obj.set_text("");
            this.Div00.addChild(obj.name, obj);

            obj = new Edit("searchbox","1113","655","267","55",null,null,null,null,null,null,this.Div00.form);
            obj.set_taborder("4");
            this.Div00.addChild(obj.name, obj);

            obj = new Button("search","1410","655","110","55",null,null,null,null,null,null,this.Div00.form);
            obj.set_taborder("5");
            obj.set_text("검색");
            obj.set_font("bold 25px/normal \"Gulim\"");
            this.Div00.addChild(obj.name, obj);

            obj = new Static("Static02","396","234","359","56",null,null,null,null,null,null,this.Div00.form);
            obj.set_taborder("6");
            obj.set_text("이동페이지");
            obj.set_font("bold 40px/normal \"Gulim\"");
            obj.set_textAlign("center");
            this.Div00.addChild(obj.name, obj);

            obj = new Div("reviewchart","31","120","486","338",null,null,null,null,null,null,this.Div00.form);
            obj.set_taborder("7");
            this.Div00.addChild(obj.name, obj);

            obj = new Button("reviewinsert","1350","1750","157","94",null,null,null,null,null,null,this.Div00.form);
            obj.set_taborder("8");
            obj.set_text("작성");
            obj.set_font("bold 30px/normal \"Gulim\"");
            obj.set_textAlign("center");
            this.Div00.addChild(obj.name, obj);

            obj = new Static("Static03","214","1302","172","68",null,null,null,null,null,null,this.Div00.form);
            obj.set_taborder("9");
            obj.set_text("제목");
            obj.set_textAlign("center");
            obj.set_font("bold 30px/normal \"Gulim\"");
            this.Div00.addChild(obj.name, obj);

            obj = new Static("Static04","400","1177","362","86",null,null,null,null,null,null,this.Div00.form);
            obj.set_taborder("10");
            obj.set_text("공지사항 작성");
            obj.set_font("bold 40px/normal \"Gulim\"");
            obj.set_textAlign("center");
            this.Div00.addChild(obj.name, obj);

            obj = new Static("Static03_00","215","1420","172","68",null,null,null,null,null,null,this.Div00.form);
            obj.set_taborder("11");
            obj.set_text("내용");
            obj.set_font("bold 30px/normal \"Gulim\"");
            obj.set_textAlign("center");
            this.Div00.addChild(obj.name, obj);

            obj = new Edit("Edit00","400","1296","722","84",null,null,null,null,null,null,this.Div00.form);
            obj.set_taborder("12");
            this.Div00.addChild(obj.name, obj);

            obj = new TextArea("TextArea00","397","1420","1111","300",null,null,null,null,null,null,this.Div00.form);
            obj.set_taborder("13");
            this.Div00.addChild(obj.name, obj);

            // Layout Functions
            //-- Default Layout : this
            obj = new Layout("default","Desktop_screen",1800,1890,this,function(p){});
            this.addLayout(obj.name, obj);
            
            // BindItem Information

        };
        
        this.loadPreloadList = function()
        {

        };
        
        // User Script
        this.registerScript("Form_Work_copy0.xfdl", function() {

        this.search = function(obj,e)
        {
        var type = this.Div00.form.combobox.value;
        var value= this.Div00.form.searchbox.value;
        this.alert(type+value);
        var id ="urlTest02";
        var url = "http://192.168.0.144/springDept/search?searchvalue="+value+"&searchtype="+type;
        var reqDs= "";
        var respDs= " review=ar";
        var args= "";
        var callback= "";
        this.transaction(id,url,reqDs,respDs,args,callback);
        };

        this.myload=function(obj,e){
        var id ="urlTest02";
        var url = "http://192.168.0.144/springDept/all";
        var reqDs= "";
        var respDs= " review=ar";
        var args= "";
        var callback= "received";
        this.transaction(id,url,reqDs,respDs,args,callback);
        this.received = function(id,code,message){
        alert(id+","+code+","+message);
        };
        };
        });
        
        // Regist UI Components Event
        this.on_initEvent = function()
        {
            this.addEventHandler("onload",this.myload,this);
            this.Div00.form.combobox.addEventHandler("onitemchanged",this.combobox,this);
            this.Div00.form.Static02.addEventHandler("onclick",this.search,this);
        };

        this.loadIncludeScript("Form_Work_copy0.xfdl");
        this.loadPreloadList();
        
        // Remove Reference
        obj = null;
    };
}
)();
