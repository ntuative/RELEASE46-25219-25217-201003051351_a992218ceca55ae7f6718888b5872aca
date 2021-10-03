package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomModerationData implements IDisposable
   {
       
      
      private var var_113:RoomData;
      
      private var _disposed:Boolean;
      
      private var var_1615:int;
      
      private var var_374:int;
      
      private var var_697:RoomData;
      
      private var var_1616:int;
      
      private var _ownerName:String;
      
      private var var_1614:Boolean;
      
      public function RoomModerationData(param1:IMessageDataWrapper)
      {
         super();
         var_374 = param1.readInteger();
         var_1615 = param1.readInteger();
         var_1614 = param1.readBoolean();
         var_1616 = param1.readInteger();
         _ownerName = param1.readString();
         var_113 = new RoomData(param1);
         var_697 = new RoomData(param1);
      }
      
      public function get userCount() : int
      {
         return var_1615;
      }
      
      public function get event() : RoomData
      {
         return var_697;
      }
      
      public function get room() : RoomData
      {
         return var_113;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(var_113 != null)
         {
            var_113.dispose();
            var_113 = null;
         }
         if(var_697 != null)
         {
            var_697.dispose();
            var_697 = null;
         }
      }
      
      public function get flatId() : int
      {
         return var_374;
      }
      
      public function get ownerId() : int
      {
         return var_1616;
      }
      
      public function get ownerInRoom() : Boolean
      {
         return var_1614;
      }
   }
}
