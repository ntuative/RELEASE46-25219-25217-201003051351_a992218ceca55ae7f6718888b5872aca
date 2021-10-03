package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatMessage extends RoomWidgetMessage
   {
      
      public static const const_125:int = 0;
      
      public static const const_102:int = 1;
      
      public static const const_100:int = 2;
      
      public static const const_645:String = "RWCM_MESSAGE_CHAT";
       
      
      private var var_1321:int = 0;
      
      private var var_1743:String = "";
      
      private var var_190:String = "";
      
      public function RoomWidgetChatMessage(param1:String, param2:String, param3:int = 0, param4:String = "")
      {
         super(param1);
         var_190 = param2;
         var_1321 = param3;
         var_1743 = param4;
      }
      
      public function get recipientName() : String
      {
         return var_1743;
      }
      
      public function get chatType() : int
      {
         return var_1321;
      }
      
      public function get text() : String
      {
         return var_190;
      }
   }
}
