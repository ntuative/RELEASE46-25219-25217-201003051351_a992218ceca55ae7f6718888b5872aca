package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_1638:Boolean = false;
      
      private var var_1637:int = 0;
      
      private var var_1636:int = 0;
      
      private var var_1639:int = 0;
      
      private var var_1433:int = 0;
      
      private var var_1640:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function set creditBalance(param1:int) : void
      {
         var_1433 = Math.max(0,param1);
      }
      
      public function get clubPastPeriods() : int
      {
         return var_1637;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return var_1638;
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         var_1638 = param1;
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         var_1637 = Math.max(0,param1);
      }
      
      public function set clubDays(param1:int) : void
      {
         var_1636 = Math.max(0,param1);
      }
      
      public function get creditBalance() : int
      {
         return var_1433;
      }
      
      public function set pixelBalance(param1:int) : void
      {
         var_1639 = Math.max(0,param1);
      }
      
      public function get clubDays() : int
      {
         return var_1636;
      }
      
      public function get pixelBalance() : int
      {
         return var_1639;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_1640 = Math.max(0,param1);
      }
      
      public function get clubPeriods() : int
      {
         return var_1640;
      }
   }
}
