package com.sulake.habbo.toolbar
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IRegionWindow;
   import com.sulake.core.window.enum.WindowType;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarEvent;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import com.sulake.habbo.window.enum.HabboWindowStyle;
   import com.sulake.habbo.window.enum.HabboWindowType;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class ToolbarIcon
   {
       
      
      private var var_502:ToolbarIconGroup;
      
      private var var_1050:Boolean = false;
      
      private var var_2108:String;
      
      private var var_915:Number;
      
      private var _assetLibrary:IAssetLibrary;
      
      private var var_1047:String = "-1";
      
      private var _window:IBitmapWrapperWindow;
      
      private var var_32:String = "-1";
      
      private var var_98:IRegionWindow;
      
      private var _bitmapData:BitmapData;
      
      private var var_700:String;
      
      private var var_2107:int;
      
      private var var_701:Timer;
      
      private var var_1534:Array;
      
      private var var_1048:ToolbarIconBouncer;
      
      private var _windowManager:IHabboWindowManager;
      
      private var _events:IEventDispatcher;
      
      private var var_2319:Array;
      
      private var var_268:ToolbarBarMenuAnimator;
      
      private var var_405:ToolbarIconAnimator;
      
      private var var_587:Array;
      
      private var var_868:Array;
      
      private var var_867:String = "-1";
      
      private var var_2373:Boolean = true;
      
      private var var_1049:Array;
      
      private var var_1286:Timer;
      
      private var var_2106:int;
      
      private var var_86:Number = 0;
      
      private var _y:Number = 0;
      
      public function ToolbarIcon(param1:ToolbarIconGroup, param2:IHabboWindowManager, param3:IAssetLibrary, param4:String, param5:IEventDispatcher, param6:ToolbarBarMenuAnimator)
      {
         var_587 = new Array();
         var_868 = new Array();
         var_2319 = new Array();
         var_1048 = new ToolbarIconBouncer(0.8,1);
         super();
         var_502 = param1;
         _windowManager = param2;
         _assetLibrary = param3;
         var_700 = param4;
         _events = param5;
         var_268 = param6;
         var_1286 = new Timer(40,40);
         var_1286.addEventListener(TimerEvent.TIMER,updateBouncer);
         var_98 = param2.createWindow("TOOLBAR_ICON_" + param4 + "_REGION","",WindowType.const_443,HabboWindowStyle.const_39,HabboWindowParam.const_38,new Rectangle(0,0,1,1),onMouseEvent) as IRegionWindow;
         var_98.background = true;
         var_98.alphaTreshold = 0;
         var_98.visible = false;
         _window = IBitmapWrapperWindow(param2.createWindow("TOOLBAR_ICON_" + param4,"",HabboWindowType.BITMAP_WRAPPER,HabboWindowStyle.const_39,HabboWindowParam.const_39,new Rectangle(0,0,1,1),onMouseEvent,0));
         var_98.addChild(_window);
         _window.addEventListener(WindowEvent.const_43,onWindowResized);
      }
      
      private function getStateObject(param1:String) : StateItem
      {
         return var_1534[var_1049.indexOf(param1)];
      }
      
      public function get windowOffsetFromIcon() : Number
      {
         return var_2106;
      }
      
      public function get iconId() : String
      {
         return var_700;
      }
      
      private function onWindowResized(param1:WindowEvent) : void
      {
         updateRegion();
      }
      
      public function changePosition(param1:Number) : void
      {
         var_915 = param1;
         updateRegion();
      }
      
      public function setIcon(param1:Boolean = true) : void
      {
         exists = param1;
         setAnimator();
      }
      
      public function set state(param1:String) : void
      {
         var_32 = param1;
         exists = true;
         setAnimator();
         setTooltip();
      }
      
      private function updateRegion() : void
      {
         if(var_98 == null || _window == null)
         {
            return;
         }
         var_98.width = _window.width;
         var_98.height = _window.height;
         var _loc1_:Boolean = false;
         if(_loc1_)
         {
            var_86 = (0 - 0) / 2;
            _y = var_915 + (0 - 0) / 2;
         }
         else
         {
            var_86 = var_915 + (0 - 0) / 2;
            _y = (0 - 0) / 2;
         }
         var_98.x = var_86;
         var_98.y = _y;
      }
      
      public function dispose() : void
      {
         if(_window != null)
         {
            _window.dispose();
            _window = null;
         }
         if(var_98 != null)
         {
            var_98.dispose();
            var_98 = null;
         }
         var_587 = null;
         var_868 = null;
         exists = false;
         _windowManager = null;
         _events = null;
         var_268 = null;
         var_405 = null;
         _bitmapData = null;
      }
      
      public function dockMenu(param1:String, param2:Array = null, param3:Boolean = false) : void
      {
         var _loc4_:* = null;
         if(var_587.indexOf(param1) < 0)
         {
            var_587.push(param1);
            _loc4_ = new MenuSettingsItem(param1,param2,param3);
            var_868.push(_loc4_);
         }
      }
      
      private function onMouseEvent(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc4_:* = null;
         if(!var_1050)
         {
            return;
         }
         var _loc3_:StateItem = getCurrentStateObject();
         switch(param1.type)
         {
            case WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK:
               if(var_268)
               {
                  var_268.repositionWindow(var_700,true);
               }
               if(_events != null)
               {
                  _loc4_ = new HabboToolbarEvent(HabboToolbarEvent.const_55);
                  _loc4_.iconId = var_700;
                  _events.dispatchEvent(_loc4_);
               }
               break;
            case WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER:
               if(false)
               {
                  if(_loc3_.hasStateOver)
                  {
                     state = _loc3_.stateOver;
                  }
                  else
                  {
                     state = var_1047;
                  }
               }
               break;
            case WindowMouseEvent.const_27:
               if(false)
               {
                  if(_loc3_.hasDefaultState)
                  {
                     state = _loc3_.defaultState;
                  }
                  else
                  {
                     state = var_867;
                  }
               }
         }
      }
      
      public function docksMenu(param1:String) : Boolean
      {
         return var_587.indexOf(param1) > -1;
      }
      
      public function menuLockedToIcon(param1:String) : Boolean
      {
         if(!docksMenu(param1))
         {
            return false;
         }
         var _loc2_:MenuSettingsItem = var_868[var_587.indexOf(param1)];
         return _loc2_.lockToIcon;
      }
      
      public function set exists(param1:Boolean) : void
      {
         var_1050 = param1;
         if(var_98 != null)
         {
            var_98.visible = var_1050;
         }
      }
      
      private function setTooltip() : void
      {
         if(var_98 == null)
         {
            return;
         }
         var _loc1_:StateItem = getCurrentStateObject();
         if(_loc1_ != null && _loc1_.tooltip != null)
         {
            var_98.toolTipCaption = "${toolbar.icon.tooltip." + _loc1_.tooltip + "}";
         }
         else
         {
            var_98.toolTipCaption = "${toolbar.icon.tooltip." + var_2108.toLowerCase() + "}";
         }
         var_98.toolTipDelay = 100;
      }
      
      public function animateWindowIn(param1:String, param2:IWindowContainer, param3:Number, param4:String, param5:Point) : void
      {
         if(var_268 != null)
         {
            var_268.animateWindowIn(this,param1,param2,var_700,param3,param4,getMenuYieldList(param1));
         }
      }
      
      private function updateAnimator(param1:Event) : void
      {
         if(var_405 != null && _window != null)
         {
            var_405.update(_window);
            if(var_405.hasNextState())
            {
               state = var_405.nextState;
            }
         }
      }
      
      public function defineFromXML(param1:XML) : void
      {
         var _loc3_:int = 0;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var_1534 = new Array();
         var_1049 = new Array();
         var_2108 = param1.@id;
         var_2106 = int(param1.@window_offset_from_icon);
         var_2107 = int(param1.@window_margin);
         var _loc2_:XMLList = param1.elements("state");
         if(_loc2_.length() > 0)
         {
            if(param1.attribute("state_over").length() > 0)
            {
               var_1047 = param1.@state_over;
            }
            if(param1.attribute("state_default").length() > 0)
            {
               var_867 = param1.@state_default;
            }
            _loc3_ = 0;
            while(_loc3_ < _loc2_.length())
            {
               _loc4_ = _loc2_[_loc3_];
               _loc5_ = new StateItem(_loc4_,param1.@id.toLowerCase());
               var_1049.push(_loc5_.id);
               var_1534.push(_loc5_);
               if(_loc3_ == 0)
               {
                  if(var_1047 == "-1")
                  {
                     var_1047 = _loc5_.id;
                  }
                  if(var_867 == "-1")
                  {
                     var_867 = _loc5_.id;
                  }
               }
               _loc3_++;
            }
         }
         var_32 = var_867;
      }
      
      public function setIconBitmapData(param1:BitmapData = null) : void
      {
         exists = true;
         _bitmapData = param1;
         setAnimator();
      }
      
      public function hideWindow(param1:String, param2:IWindowContainer, param3:Number, param4:String) : void
      {
         if(var_268 != null)
         {
            var_268.hideWindow(param1,param2,var_700,param3);
         }
      }
      
      public function positionWindow(param1:String, param2:IWindowContainer, param3:Number, param4:String) : void
      {
         if(var_268 != null)
         {
            var_268.positionWindow(this,param1,param2,var_700,param3,getMenuYieldList(param1));
         }
      }
      
      public function animateWindowOut(param1:String, param2:IWindowContainer, param3:String) : void
      {
         if(var_268 != null)
         {
            var_268.animateWindowOut(this,param1,param2,param3);
         }
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get exists() : Boolean
      {
         return var_1050;
      }
      
      private function updateBouncer(param1:Event) : void
      {
         if(var_1048 != null && _window != null)
         {
            var_1048.update();
            _window.y = var_1048.location;
         }
      }
      
      private function setAnimator() : void
      {
         if(var_701 != null)
         {
            var_701.stop();
            var_701 = null;
         }
         var _loc1_:StateItem = getCurrentStateObject();
         if(_loc1_ != null && var_1050)
         {
            if(_loc1_.frames == null)
            {
               return;
            }
            var_405 = new ToolbarIconAnimator(_loc1_,_assetLibrary,_window,var_86,_y,_bitmapData);
            if(false)
            {
               var_701 = new Timer(_loc1_.timer);
               var_701.addEventListener(TimerEvent.TIMER,updateAnimator);
               var_701.start();
            }
            if(_loc1_.bounce)
            {
               var_1048.reset(-7);
               var_1286.reset();
               var_1286.start();
            }
         }
         else
         {
            var_405 = null;
            _window.bitmap = null;
         }
      }
      
      public function get windowMargin() : Number
      {
         return var_2107 + var_502.windowMargin;
      }
      
      private function getCurrentStateObject() : StateItem
      {
         return getStateObject(var_32);
      }
      
      public function get window() : IWindow
      {
         return var_98;
      }
      
      public function get x() : Number
      {
         return var_86;
      }
      
      private function getMenuYieldList(param1:String) : Array
      {
         if(!docksMenu(param1))
         {
            return null;
         }
         var _loc2_:MenuSettingsItem = var_868[var_587.indexOf(param1)];
         return _loc2_.yieldList;
      }
      
      public function get group() : ToolbarIconGroup
      {
         return var_502;
      }
   }
}
