package com.sulake.habbo.communication.messages.parser.room.session
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class CantConnectMessageParser implements IMessageParser
   {
      
      public static const const_1484:int = 2;
      
      public static const const_291:int = 4;
      
      public static const const_1205:int = 1;
      
      public static const const_1328:int = 3;
       
      
      private var var_1061:int = 0;
      
      private var var_888:String = "";
      
      public function CantConnectMessageParser()
      {
         super();
      }
      
      public function get reason() : int
      {
         return var_1061;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1061 = param1.readInteger();
         if(var_1061 == 3)
         {
            var_888 = param1.readString();
         }
         else
         {
            var_888 = "";
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         var_1061 = 0;
         var_888 = "";
         return true;
      }
      
      public function get parameter() : String
      {
         return var_888;
      }
   }
}
