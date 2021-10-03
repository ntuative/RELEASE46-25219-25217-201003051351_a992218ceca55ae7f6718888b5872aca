package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_1416:String;
      
      private var var_2217:int;
      
      private var var_2216:int;
      
      private var var_2219:int;
      
      private var var_2218:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         var_2217 = param1.readInteger();
         var_2219 = param1.readInteger();
         var_2216 = param1.readInteger();
         var_2218 = param1.readString();
         var_1416 = param1.readString();
      }
      
      public function get msg() : String
      {
         return var_1416;
      }
      
      public function get hour() : int
      {
         return var_2217;
      }
      
      public function get minute() : int
      {
         return var_2219;
      }
      
      public function get chatterName() : String
      {
         return var_2218;
      }
      
      public function get chatterId() : int
      {
         return var_2216;
      }
   }
}
