package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class FaqTextMessageParser implements IMessageParser
   {
       
      
      private var var_1154:int;
      
      private var var_1155:String;
      
      public function FaqTextMessageParser()
      {
         super();
      }
      
      public function get questionId() : int
      {
         return var_1154;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1154 = param1.readInteger();
         var_1155 = param1.readString();
         return true;
      }
      
      public function get answerText() : String
      {
         return var_1155;
      }
      
      public function flush() : Boolean
      {
         var_1154 = -1;
         var_1155 = null;
         return true;
      }
   }
}
