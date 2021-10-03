package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1136:String = "WN_CREATED";
      
      public static const const_809:String = "WN_DISABLE";
      
      public static const const_1006:String = "WN_DEACTIVATED";
      
      public static const const_801:String = "WN_OPENED";
      
      public static const const_918:String = "WN_CLOSED";
      
      public static const const_898:String = "WN_DESTROY";
      
      public static const const_1569:String = "WN_ARRANGED";
      
      public static const const_384:String = "WN_PARENT_RESIZED";
      
      public static const const_878:String = "WN_ENABLE";
      
      public static const const_834:String = "WN_RELOCATE";
      
      public static const const_865:String = "WN_FOCUS";
      
      public static const const_949:String = "WN_PARENT_RELOCATED";
      
      public static const const_444:String = "WN_PARAM_UPDATED";
      
      public static const const_506:String = "WN_PARENT_ACTIVATED";
      
      public static const const_217:String = "WN_RESIZED";
      
      public static const const_881:String = "WN_CLOSE";
      
      public static const const_929:String = "WN_PARENT_REMOVED";
      
      public static const const_270:String = "WN_CHILD_RELOCATED";
      
      public static const const_523:String = "WN_ENABLED";
      
      public static const const_249:String = "WN_CHILD_RESIZED";
      
      public static const const_887:String = "WN_MINIMIZED";
      
      public static const const_570:String = "WN_DISABLED";
      
      public static const const_211:String = "WN_CHILD_ACTIVATED";
      
      public static const const_367:String = "WN_STATE_UPDATED";
      
      public static const const_546:String = "WN_UNSELECTED";
      
      public static const const_474:String = "WN_STYLE_UPDATED";
      
      public static const const_1424:String = "WN_UPDATE";
      
      public static const const_379:String = "WN_PARENT_ADDED";
      
      public static const const_529:String = "WN_RESIZE";
      
      public static const const_639:String = "WN_CHILD_REMOVED";
      
      public static const const_1510:String = "";
      
      public static const const_948:String = "WN_RESTORED";
      
      public static const const_306:String = "WN_SELECTED";
      
      public static const const_958:String = "WN_MINIMIZE";
      
      public static const const_805:String = "WN_FOCUSED";
      
      public static const const_1239:String = "WN_LOCK";
      
      public static const const_327:String = "WN_CHILD_ADDED";
      
      public static const const_861:String = "WN_UNFOCUSED";
      
      public static const const_442:String = "WN_RELOCATED";
      
      public static const const_967:String = "WN_DEACTIVATE";
      
      public static const const_1218:String = "WN_CRETAE";
      
      public static const const_879:String = "WN_RESTORE";
      
      public static const const_304:String = "WN_ACTVATED";
      
      public static const const_1371:String = "WN_LOCKED";
      
      public static const const_389:String = "WN_SELECT";
      
      public static const const_827:String = "WN_MAXIMIZE";
      
      public static const const_1014:String = "WN_OPEN";
      
      public static const const_527:String = "WN_UNSELECT";
      
      public static const const_1592:String = "WN_ARRANGE";
      
      public static const const_1304:String = "WN_UNLOCKED";
      
      public static const const_1542:String = "WN_UPDATED";
      
      public static const const_903:String = "WN_ACTIVATE";
      
      public static const const_1320:String = "WN_UNLOCK";
      
      public static const const_856:String = "WN_MAXIMIZED";
      
      public static const const_937:String = "WN_DESTROYED";
      
      public static const const_1005:String = "WN_UNFOCUS";
       
      
      public function WindowNotifyEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false)
      {
         super(param1,param2,param3,false,param4);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
      
      override public function clone() : Event
      {
         return new WindowNotifyEvent(type,_window,var_1589,cancelable);
      }
   }
}
