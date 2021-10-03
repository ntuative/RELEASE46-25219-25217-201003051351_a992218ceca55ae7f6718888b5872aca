package com.sulake.habbo.communication.messages.parser.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomSettingsFlatInfo;
   
   public class FlatInfoMessageParser implements IMessageParser
   {
       
      
      private var var_226:RoomSettingsFlatInfo;
      
      public function FlatInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         var_226 = null;
         return true;
      }
      
      public function get flatInfo() : RoomSettingsFlatInfo
      {
         return var_226;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_226 = new RoomSettingsFlatInfo();
         var_226.allowFurniMoving = param1.readInteger() == 1;
         var_226.doorMode = param1.readInteger();
         var_226.id = param1.readInteger();
         var_226.ownerName = param1.readString();
         var_226.type = param1.readString();
         var_226.name = param1.readString();
         var_226.description = param1.readString();
         var_226.showOwnerName = param1.readInteger() == 1;
         var_226.allowTrading = param1.readInteger() == 1;
         var_226.categoryAlertKey = param1.readInteger() == 1;
         return true;
      }
   }
}
