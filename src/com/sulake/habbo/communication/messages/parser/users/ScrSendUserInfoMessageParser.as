package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1690:int;
      
      private var var_1343:String;
      
      private var var_1691:int;
      
      private var var_1689:int;
      
      private var var_1693:int;
      
      private var var_1692:Boolean;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function get productName() : String
      {
         return var_1343;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return var_1692;
      }
      
      public function get responseType() : int
      {
         return var_1689;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return var_1691;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1343 = param1.readString();
         var_1691 = param1.readInteger();
         var_1690 = param1.readInteger();
         var_1693 = param1.readInteger();
         var_1689 = param1.readInteger();
         var_1692 = param1.readBoolean();
         return true;
      }
      
      public function get memberPeriods() : int
      {
         return var_1690;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return var_1693;
      }
   }
}
