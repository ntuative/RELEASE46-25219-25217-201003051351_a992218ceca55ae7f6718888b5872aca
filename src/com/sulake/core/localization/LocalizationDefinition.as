package com.sulake.core.localization
{
   public class LocalizationDefinition implements ILocalizationDefinition
   {
       
      
      private var _name:String;
      
      private var var_1527:String;
      
      private var var_921:String;
      
      private var var_1528:String;
      
      private var var_1529:String;
      
      public function LocalizationDefinition(param1:String, param2:String, param3:String)
      {
         super();
         var _loc4_:Array = param1.split("_");
         var_1529 = _loc4_[0];
         var _loc5_:Array = String(_loc4_[1]).split(".");
         var_1527 = _loc5_[0];
         var_1528 = _loc5_[1];
         _name = param2;
         var_921 = param3;
      }
      
      public function get countryCode() : String
      {
         return var_1527;
      }
      
      public function get languageCode() : String
      {
         return var_1529;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get url() : String
      {
         return var_921;
      }
      
      public function get encoding() : String
      {
         return var_1528;
      }
      
      public function get id() : String
      {
         return var_1529 + "_" + var_1527 + "." + var_1528;
      }
   }
}
