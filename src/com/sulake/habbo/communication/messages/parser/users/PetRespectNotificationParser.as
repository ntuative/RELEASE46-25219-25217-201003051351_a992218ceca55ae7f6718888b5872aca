package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.parser.inventory.pets.PetData;
   
   public class PetRespectNotificationParser implements IMessageParser
   {
       
      
      private var var_1934:int;
      
      private var var_1353:PetData;
      
      private var var_2227:int;
      
      public function PetRespectNotificationParser()
      {
         super();
      }
      
      public function get respect() : int
      {
         return var_1934;
      }
      
      public function get petData() : PetData
      {
         return var_1353;
      }
      
      public function flush() : Boolean
      {
         var_1353 = null;
         return true;
      }
      
      public function get petOwnerId() : int
      {
         return var_2227;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1934 = param1.readInteger();
         var_2227 = param1.readInteger();
         var_1353 = new PetData(param1);
         return true;
      }
   }
}
