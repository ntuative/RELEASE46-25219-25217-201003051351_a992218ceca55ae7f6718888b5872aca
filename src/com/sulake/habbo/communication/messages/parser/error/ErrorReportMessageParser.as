package com.sulake.habbo.communication.messages.parser.error
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ErrorReportMessageParser implements IMessageParser
   {
       
      
      private var var_1176:int;
      
      private var var_1108:int;
      
      private var var_1175:String;
      
      public function ErrorReportMessageParser()
      {
         super();
      }
      
      public function get messageId() : int
      {
         return var_1176;
      }
      
      public function flush() : Boolean
      {
         var_1108 = 0;
         var_1176 = 0;
         var_1175 = null;
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1108;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1176 = param1.readInteger();
         var_1108 = param1.readInteger();
         var_1175 = param1.readString();
         return true;
      }
      
      public function get timestamp() : String
      {
         return var_1175;
      }
   }
}
