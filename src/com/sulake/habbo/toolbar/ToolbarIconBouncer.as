package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_1973:Number;
      
      private var var_569:Number = 0;
      
      private var var_1972:Number;
      
      private var var_570:Number;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         var_1973 = param1;
         var_1972 = param2;
      }
      
      public function update() : void
      {
         var_570 += var_1972;
         var_569 += var_570;
         if(var_569 > 0)
         {
            var_569 = 0;
            var_570 = var_1973 * -1 * var_570;
         }
      }
      
      public function reset(param1:int) : void
      {
         var_570 = param1;
         var_569 = 0;
      }
      
      public function get location() : Number
      {
         return var_569;
      }
   }
}
