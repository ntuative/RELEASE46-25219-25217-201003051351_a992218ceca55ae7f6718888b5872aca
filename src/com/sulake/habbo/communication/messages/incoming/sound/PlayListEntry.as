package com.sulake.habbo.communication.messages.incoming.sound
{
   public class PlayListEntry
   {
       
      
      private var var_1709:int;
      
      private var var_2104:int = 0;
      
      private var var_2102:String;
      
      private var var_2105:int;
      
      private var var_2103:String;
      
      public function PlayListEntry(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         var_1709 = param1;
         var_2105 = param2;
         var_2103 = param3;
         var_2102 = param4;
      }
      
      public function get length() : int
      {
         return var_2105;
      }
      
      public function get name() : String
      {
         return var_2103;
      }
      
      public function get creator() : String
      {
         return var_2102;
      }
      
      public function get startPlayHeadPos() : int
      {
         return var_2104;
      }
      
      public function get id() : int
      {
         return var_1709;
      }
      
      public function set startPlayHeadPos(param1:int) : void
      {
         var_2104 = param1;
      }
   }
}
