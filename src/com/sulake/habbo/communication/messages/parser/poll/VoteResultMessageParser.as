package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoteResultMessageParser implements IMessageParser
   {
       
      
      private var var_1211:int;
      
      private var var_1024:String;
      
      private var var_670:Array;
      
      private var var_1002:Array;
      
      public function VoteResultMessageParser()
      {
         super();
      }
      
      public function get votes() : Array
      {
         return var_670.slice();
      }
      
      public function flush() : Boolean
      {
         var_1024 = "";
         var_1002 = [];
         var_670 = [];
         var_1211 = 0;
         return true;
      }
      
      public function get totalVotes() : int
      {
         return var_1211;
      }
      
      public function get question() : String
      {
         return var_1024;
      }
      
      public function get choices() : Array
      {
         return var_1002.slice();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1024 = param1.readString();
         var_1002 = [];
         var_670 = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            param1.readInteger();
            var_1002.push(param1.readString());
            var_670.push(param1.readInteger());
            _loc3_++;
         }
         var_1211 = param1.readInteger();
         return true;
      }
   }
}
