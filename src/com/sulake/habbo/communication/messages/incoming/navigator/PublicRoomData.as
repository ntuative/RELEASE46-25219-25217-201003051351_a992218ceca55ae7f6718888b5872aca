package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_1985:int;
      
      private var var_1987:String;
      
      private var var_1822:int;
      
      private var _disposed:Boolean;
      
      private var var_1986:int;
      
      private var var_1823:String;
      
      private var var_1201:int;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         var_1823 = param1.readString();
         var_1985 = param1.readInteger();
         var_1822 = param1.readInteger();
         var_1987 = param1.readString();
         var_1986 = param1.readInteger();
         var_1201 = param1.readInteger();
      }
      
      public function get maxUsers() : int
      {
         return var_1986;
      }
      
      public function get worldId() : int
      {
         return var_1822;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
      }
      
      public function get unitPropertySet() : String
      {
         return var_1823;
      }
      
      public function get unitPort() : int
      {
         return var_1985;
      }
      
      public function get castLibs() : String
      {
         return var_1987;
      }
      
      public function get nodeId() : int
      {
         return var_1201;
      }
   }
}
