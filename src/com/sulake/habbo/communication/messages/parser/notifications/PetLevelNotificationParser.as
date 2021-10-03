package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_532:String;
      
      private var var_1658:int;
      
      private var var_1910:String;
      
      private var var_940:int;
      
      private var var_1254:int;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return var_1254;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1254 = param1.readInteger();
         var_1910 = param1.readString();
         var_1658 = param1.readInteger();
         var_532 = param1.readString();
         var_940 = param1.readInteger();
         return true;
      }
      
      public function get petName() : String
      {
         return var_1910;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get figure() : String
      {
         return var_532;
      }
      
      public function get petType() : int
      {
         return var_940;
      }
      
      public function get level() : int
      {
         return var_1658;
      }
   }
}
