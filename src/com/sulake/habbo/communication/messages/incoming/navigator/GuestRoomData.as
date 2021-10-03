package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_1615:int;
      
      private var var_2235:String;
      
      private var var_2233:int;
      
      private var var_2236:int;
      
      private var var_697:Boolean;
      
      private var var_1957:Boolean;
      
      private var var_374:int;
      
      private var var_1112:String;
      
      private var var_1827:int;
      
      private var var_1212:int;
      
      private var _ownerName:String;
      
      private var var_703:String;
      
      private var var_2234:int;
      
      private var var_2232:RoomThumbnailData;
      
      private var var_1826:Boolean;
      
      private var var_616:Array;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         var_616 = new Array();
         super();
         var_374 = param1.readInteger();
         var_697 = param1.readBoolean();
         var_703 = param1.readString();
         _ownerName = param1.readString();
         var_1827 = param1.readInteger();
         var_1615 = param1.readInteger();
         var_2234 = param1.readInteger();
         var_1112 = param1.readString();
         var_2233 = param1.readInteger();
         var_1826 = param1.readBoolean();
         var_2236 = param1.readInteger();
         var_1212 = param1.readInteger();
         var_2235 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            var_616.push(_loc4_);
            _loc3_++;
         }
         var_2232 = new RoomThumbnailData(param1);
         var_1957 = param1.readBoolean();
      }
      
      public function get maxUserCount() : int
      {
         return var_2234;
      }
      
      public function get roomName() : String
      {
         return var_703;
      }
      
      public function get userCount() : int
      {
         return var_1615;
      }
      
      public function get score() : int
      {
         return var_2236;
      }
      
      public function get eventCreationTime() : String
      {
         return var_2235;
      }
      
      public function get allowTrading() : Boolean
      {
         return var_1826;
      }
      
      public function get tags() : Array
      {
         return var_616;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1957;
      }
      
      public function get event() : Boolean
      {
         return var_697;
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
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get categoryId() : int
      {
         return var_1212;
      }
      
      public function get srchSpecPrm() : int
      {
         return var_2233;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return var_2232;
      }
      
      public function get doorMode() : int
      {
         return var_1827;
      }
      
      public function get flatId() : int
      {
         return var_374;
      }
      
      public function get description() : String
      {
         return var_1112;
      }
   }
}
