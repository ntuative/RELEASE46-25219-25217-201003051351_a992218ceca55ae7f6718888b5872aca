package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_2097:String;
      
      private var var_374:int;
      
      private var var_2093:String;
      
      private var var_2094:String;
      
      private var var_2095:int;
      
      private var var_2092:String;
      
      private var var_2096:int;
      
      private var var_616:Array;
      
      private var var_1050:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         var_616 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_1050 = false;
            return;
         }
         this.var_1050 = true;
         var_2095 = int(_loc2_);
         var_2093 = param1.readString();
         var_374 = int(param1.readString());
         var_2096 = param1.readInteger();
         var_2097 = param1.readString();
         var_2094 = param1.readString();
         var_2092 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            var_616.push(_loc5_);
            _loc4_++;
         }
      }
      
      public function get eventType() : int
      {
         return var_2096;
      }
      
      public function get eventName() : String
      {
         return var_2097;
      }
      
      public function get eventDescription() : String
      {
         return var_2094;
      }
      
      public function get ownerAvatarName() : String
      {
         return var_2093;
      }
      
      public function get tags() : Array
      {
         return var_616;
      }
      
      public function get creationTime() : String
      {
         return var_2092;
      }
      
      public function get exists() : Boolean
      {
         return var_1050;
      }
      
      public function get ownerAvatarId() : int
      {
         return var_2095;
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
         this.var_616 = null;
      }
      
      public function get flatId() : int
      {
         return var_374;
      }
   }
}
