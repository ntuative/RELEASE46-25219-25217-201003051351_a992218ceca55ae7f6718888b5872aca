package com.sulake.habbo.widget.messages
{
   public class RoomWidgetRoomTagSearchMessage extends RoomWidgetMessage
   {
      
      public static const const_709:String = "RWRTSM_ROOM_TAG_SEARCH";
       
      
      private var var_1597:String = "";
      
      public function RoomWidgetRoomTagSearchMessage(param1:String)
      {
         super(const_709);
         var_1597 = param1;
      }
      
      public function get tag() : String
      {
         return var_1597;
      }
   }
}
