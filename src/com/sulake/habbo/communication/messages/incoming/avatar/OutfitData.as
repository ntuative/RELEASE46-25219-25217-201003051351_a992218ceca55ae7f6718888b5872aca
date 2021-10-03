package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_2034:String;
      
      private var var_1022:String;
      
      private var var_1712:int;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         var_1712 = param1.readInteger();
         var_2034 = param1.readString();
         var_1022 = param1.readString();
      }
      
      public function get gender() : String
      {
         return var_1022;
      }
      
      public function get figureString() : String
      {
         return var_2034;
      }
      
      public function get slotId() : int
      {
         return var_1712;
      }
   }
}
