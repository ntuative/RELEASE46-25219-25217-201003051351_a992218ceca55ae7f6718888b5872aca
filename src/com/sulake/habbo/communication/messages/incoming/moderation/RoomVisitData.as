package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomVisitData
   {
       
      
      private var var_703:String;
      
      private var var_1896:int;
      
      private var var_1564:Boolean;
      
      private var _roomId:int;
      
      private var var_1895:int;
      
      public function RoomVisitData(param1:IMessageDataWrapper)
      {
         super();
         var_1564 = param1.readBoolean();
         _roomId = param1.readInteger();
         var_703 = param1.readString();
         var_1895 = param1.readInteger();
         var_1896 = param1.readInteger();
      }
      
      public function get isPublic() : Boolean
      {
         return var_1564;
      }
      
      public function get roomName() : String
      {
         return var_703;
      }
      
      public function get enterMinute() : int
      {
         return var_1896;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get enterHour() : int
      {
         return var_1895;
      }
   }
}
