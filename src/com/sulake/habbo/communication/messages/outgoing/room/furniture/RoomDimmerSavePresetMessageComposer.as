package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var var_1606:int;
      
      private var var_1607:int;
      
      private var var_2191:Boolean;
      
      private var var_2193:String;
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_2192:int;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         _roomId = param6;
         _roomCategory = param7;
         var_1607 = param1;
         var_1606 = param2;
         var_2193 = param3;
         var_2192 = param4;
         var_2191 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1607,var_1606,var_2193,var_2192,int(var_2191)];
      }
      
      public function dispose() : void
      {
      }
   }
}
