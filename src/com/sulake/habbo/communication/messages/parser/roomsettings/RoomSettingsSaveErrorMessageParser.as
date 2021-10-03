package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_1464:int = 9;
      
      public static const const_1459:int = 4;
      
      public static const const_1491:int = 1;
      
      public static const const_1302:int = 10;
      
      public static const const_1498:int = 2;
      
      public static const const_1154:int = 7;
      
      public static const const_1228:int = 11;
      
      public static const const_1584:int = 3;
      
      public static const const_1187:int = 8;
      
      public static const const_1358:int = 5;
      
      public static const const_1591:int = 6;
      
      public static const const_1375:int = 12;
       
      
      private var var_1836:String;
      
      private var _roomId:int;
      
      private var var_1108:int;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get info() : String
      {
         return var_1836;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         _roomId = param1.readInteger();
         var_1108 = param1.readInteger();
         var_1836 = param1.readString();
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1108;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
   }
}
