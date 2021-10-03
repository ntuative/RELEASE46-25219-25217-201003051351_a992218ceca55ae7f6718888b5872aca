package com.sulake.habbo.toolbar
{
   public class MenuSettingsItem
   {
       
      
      private var var_1845:Array;
      
      private var var_1843:String;
      
      private var var_1844:Boolean;
      
      public function MenuSettingsItem(param1:String, param2:Array = null, param3:Boolean = false)
      {
         super();
         var_1843 = param1;
         var_1845 = param2;
         var_1844 = param3;
      }
      
      public function get menuId() : String
      {
         return var_1843;
      }
      
      public function get yieldList() : Array
      {
         return var_1845;
      }
      
      public function get lockToIcon() : Boolean
      {
         return var_1844;
      }
   }
}
