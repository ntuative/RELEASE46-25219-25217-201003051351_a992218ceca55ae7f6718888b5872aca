package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetEcotronBoxDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_76:String = "RWEBDUE_CONTENTS";
      
      public static const const_58:String = "RWEBDUE_PACKAGEINFO";
       
      
      private var var_190:String;
      
      private var var_1819:BitmapData;
      
      private var var_149:int = -1;
      
      private var var_10:Boolean;
      
      public function RoomWidgetEcotronBoxDataUpdateEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:BitmapData = null, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_149 = param2;
         var_190 = param3;
         var_10 = param4;
         var_1819 = param5;
      }
      
      public function get iconBitmapData() : BitmapData
      {
         return var_1819;
      }
      
      public function get text() : String
      {
         return var_190;
      }
      
      public function get objectId() : int
      {
         return var_149;
      }
      
      public function get controller() : Boolean
      {
         return var_10;
      }
   }
}
