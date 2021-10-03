package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_321:String = "WE_CHILD_RESIZED";
      
      public static const const_1306:String = "WE_CLOSE";
      
      public static const const_1258:String = "WE_DESTROY";
      
      public static const const_149:String = "WE_CHANGE";
      
      public static const const_1318:String = "WE_RESIZE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_1534:String = "WE_PARENT_RESIZE";
      
      public static const const_85:String = "WE_UPDATE";
      
      public static const const_1351:String = "WE_MAXIMIZE";
      
      public static const const_415:String = "WE_DESTROYED";
      
      public static const const_908:String = "WE_UNSELECT";
      
      public static const const_1189:String = "WE_MAXIMIZED";
      
      public static const const_1500:String = "WE_UNLOCKED";
      
      public static const const_420:String = "WE_CHILD_REMOVED";
      
      public static const const_158:String = "WE_OK";
      
      public static const const_43:String = "WE_RESIZED";
      
      public static const const_1156:String = "WE_ACTIVATE";
      
      public static const const_238:String = "WE_ENABLED";
      
      public static const const_458:String = "WE_CHILD_RELOCATED";
      
      public static const const_1365:String = "WE_CREATE";
      
      public static const const_577:String = "WE_SELECT";
      
      public static const const_152:String = "";
      
      public static const const_1516:String = "WE_LOCKED";
      
      public static const const_1528:String = "WE_PARENT_RELOCATE";
      
      public static const const_1550:String = "WE_CHILD_REMOVE";
      
      public static const const_1571:String = "WE_CHILD_RELOCATE";
      
      public static const const_1456:String = "WE_LOCK";
      
      public static const const_199:String = "WE_FOCUSED";
      
      public static const const_736:String = "WE_UNSELECTED";
      
      public static const const_833:String = "WE_DEACTIVATED";
      
      public static const const_1244:String = "WE_MINIMIZED";
      
      public static const const_1473:String = "WE_ARRANGED";
      
      public static const const_1487:String = "WE_UNLOCK";
      
      public static const const_1471:String = "WE_ATTACH";
      
      public static const const_1282:String = "WE_OPEN";
      
      public static const const_1236:String = "WE_RESTORE";
      
      public static const const_1490:String = "WE_PARENT_RELOCATED";
      
      public static const const_1170:String = "WE_RELOCATE";
      
      public static const const_1522:String = "WE_CHILD_RESIZE";
      
      public static const const_1514:String = "WE_ARRANGE";
      
      public static const const_1223:String = "WE_OPENED";
      
      public static const const_1167:String = "WE_CLOSED";
      
      public static const const_1476:String = "WE_DETACHED";
      
      public static const const_1455:String = "WE_UPDATED";
      
      public static const const_1347:String = "WE_UNFOCUSED";
      
      public static const const_470:String = "WE_RELOCATED";
      
      public static const const_1192:String = "WE_DEACTIVATE";
      
      public static const const_212:String = "WE_DISABLED";
      
      public static const const_561:String = "WE_CANCEL";
      
      public static const const_510:String = "WE_ENABLE";
      
      public static const const_1340:String = "WE_ACTIVATED";
      
      public static const const_1133:String = "WE_FOCUS";
      
      public static const const_1445:String = "WE_DETACH";
      
      public static const const_1261:String = "WE_RESTORED";
      
      public static const const_1314:String = "WE_UNFOCUS";
      
      public static const const_50:String = "WE_SELECTED";
      
      public static const const_1339:String = "WE_PARENT_RESIZED";
      
      public static const const_1292:String = "WE_CREATED";
      
      public static const const_1488:String = "WE_ATTACHED";
      
      public static const const_1161:String = "WE_MINIMIZE";
      
      public static const WINDOW_EVENT_DISABLE:String = "WE_DISABLE";
       
      
      protected var _type:String = "";
      
      protected var var_1589:IWindow;
      
      protected var _window:IWindow;
      
      protected var var_1372:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false, param5:Boolean = false)
      {
         _type = param1;
         _window = param2;
         var_1589 = param3;
         var_1372 = false;
         super(param1,param4,param5);
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return var_1372;
      }
      
      public function get related() : IWindow
      {
         return var_1589;
      }
      
      public function get window() : IWindow
      {
         return _window;
      }
      
      public function set type(param1:String) : void
      {
         _type = param1;
      }
      
      override public function get type() : String
      {
         return _type;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","bubbles","cancelable","window");
      }
      
      override public function clone() : Event
      {
         return new WindowEvent(_type,window,related,bubbles,cancelable);
      }
      
      public function preventWindowOperation() : void
      {
         if(cancelable)
         {
            var_1372 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
   }
}
