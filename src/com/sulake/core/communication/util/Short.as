package com.sulake.core.communication.util
{
   import flash.utils.ByteArray;
   
   public class Short
   {
       
      
      private var var_719:ByteArray;
      
      public function Short(param1:int)
      {
         super();
         var_719 = new ByteArray();
         var_719.writeShort(param1);
         var_719.position = 0;
      }
      
      public function get value() : int
      {
         var _loc1_:int = 0;
         var_719.position = 0;
         if(false)
         {
            _loc1_ = var_719.readShort();
            var_719.position = 0;
         }
         return _loc1_;
      }
   }
}
