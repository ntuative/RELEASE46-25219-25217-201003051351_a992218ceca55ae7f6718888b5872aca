package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   
   public class RoomEntryInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1761:int;
      
      private var var_373:Boolean;
      
      private var var_1760:Boolean;
      
      private var var_785:PublicRoomShortData;
      
      public function RoomEntryInfoMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1760 = param1.readBoolean();
         if(var_1760)
         {
            var_1761 = param1.readInteger();
            var_373 = param1.readBoolean();
         }
         else
         {
            var_785 = new PublicRoomShortData(param1);
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         if(var_785 != null)
         {
            var_785.dispose();
            var_785 = null;
         }
         return true;
      }
      
      public function get guestRoomId() : int
      {
         return var_1761;
      }
      
      public function get owner() : Boolean
      {
         return var_373;
      }
      
      public function get guestRoom() : Boolean
      {
         return var_1760;
      }
      
      public function get publicSpace() : PublicRoomShortData
      {
         return var_785;
      }
   }
}
