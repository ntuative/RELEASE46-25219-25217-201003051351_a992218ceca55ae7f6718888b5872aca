package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_528:int = 2;
      
      public static const const_862:int = 6;
      
      public static const const_603:int = 1;
      
      public static const const_694:int = 3;
      
      public static const const_992:int = 4;
      
      public static const const_612:int = 5;
       
      
      private var var_1883:String;
      
      private var var_1064:int;
      
      private var var_1861:String;
      
      private var _type:int;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         _type = param1;
         var_1064 = param2;
         var_1861 = param3;
         var_1883 = param4;
      }
      
      public function get time() : String
      {
         return var_1883;
      }
      
      public function get senderId() : int
      {
         return var_1064;
      }
      
      public function get messageText() : String
      {
         return var_1861;
      }
      
      public function get type() : int
      {
         return _type;
      }
   }
}
