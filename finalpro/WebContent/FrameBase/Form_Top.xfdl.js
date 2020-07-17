(function()
{
    return function()
    {
        if (!this._is_form)
            return;
        
        var obj = null;
        
        this.on_create = function()
        {
            this.set_name("Form_Top");
            this.set_titletext("Form_Top");
            if (Form == this.constructor)
            {
                this._setFormPosition(1280,50);
            }
            
            // Object(Dataset, ExcelExportObject) Initialize

            
            // UI Components Initialize
            obj = new Button("btn1","22","10","95","34",null,null,null,null,null,null,this);
            obj.set_taborder("0");
            obj.set_text("이동");
            this.addChild(obj.name, obj);

            // Layout Functions
            //-- Default Layout : this
            obj = new Layout("default","Desktop_screen",1280,50,this,
            	//-- Layout function
            	function(p)
            	{
                var rootobj = p;
                p = rootobj;
                p.set_titletext("Form_Top");

                p.btn1.set_taborder("0");
                p.btn1.set_text("이동");
                p.btn1.move("22","10","95","34",null,null);
            	}
            );
            this.addLayout(obj.name, obj);

            //-- Normal Layout : this
            obj = new Layout("screen00","screen00",1280,50,this,
            	//-- Layout function
            	function(p)
            	{
                var rootobj = p;
                p = rootobj;

            	}
            );
            this.addLayout(obj.name, obj);
            
            // BindItem Information

        };
        
        this.loadPreloadList = function()
        {

        };
        
        // User Script
        this.registerScript("Form_Top.xfdl", function() {
        this.movePage= function(obj,e)
        {
        this.getOwnerFrame().getOwnerFrame().HFrameSet00.WorkFrame.formurl="FrameBase::Form_Work_copy0.xfdl"
        };
        });
        
        // Regist UI Components Event
        this.on_initEvent = function()
        {
            this.btn1.addEventHandler("onclick",this.movePage,this);
        };

        this.loadIncludeScript("Form_Top.xfdl");
        this.loadPreloadList();
        
        // Remove Reference
        obj = null;
    };
}
)();
