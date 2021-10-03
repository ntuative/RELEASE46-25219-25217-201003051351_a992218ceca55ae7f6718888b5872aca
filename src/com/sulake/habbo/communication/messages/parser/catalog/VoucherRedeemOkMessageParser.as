package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoucherRedeemOkMessageParser implements IMessageParser
   {
       
      
      private var var_1343:String = "";
      
      private var var_1342:String = "";
      
      public function VoucherRedeemOkMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         var_1342 = "";
         var_1343 = "";
         return true;
      }
      
      public function get productName() : String
      {
         return var_1343;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1342 = param1.readString();
         var_1343 = param1.readString();
         return true;
      }
      
      public function get productDescription() : String
      {
         return var_1342;
      }
   }
}
