package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1068:int;
      
      private var var_2077:int;
      
      private var var_1520:int;
      
      private var var_113:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         var_1520 = param1.readInteger();
         var_2077 = param1.readInteger();
         var_1068 = param1.readInteger();
         var_113 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + var_1520);
      }
      
      public function get reportedUserId() : int
      {
         return var_1068;
      }
      
      public function get callerUserId() : int
      {
         return var_2077;
      }
      
      public function get callId() : int
      {
         return var_1520;
      }
      
      public function get room() : RoomChatlogData
      {
         return var_113;
      }
   }
}
