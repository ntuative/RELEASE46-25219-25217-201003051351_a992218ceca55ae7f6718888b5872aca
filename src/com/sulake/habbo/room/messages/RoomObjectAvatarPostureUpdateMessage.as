package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarPostureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1866:String;
      
      private var var_888:String;
      
      public function RoomObjectAvatarPostureUpdateMessage(param1:String, param2:String = "")
      {
         super();
         var_1866 = param1;
         var_888 = param2;
      }
      
      public function get postureType() : String
      {
         return var_1866;
      }
      
      public function get parameter() : String
      {
         return var_888;
      }
   }
}
