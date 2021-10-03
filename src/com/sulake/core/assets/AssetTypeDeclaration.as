package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_2202:Class;
      
      private var var_2201:Class;
      
      private var var_2203:String;
      
      private var var_1339:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         var_2203 = param1;
         var_2201 = param2;
         var_2202 = param3;
         if(rest == null)
         {
            var_1339 = new Array();
         }
         else
         {
            var_1339 = rest;
         }
      }
      
      public function get loaderClass() : Class
      {
         return var_2202;
      }
      
      public function get assetClass() : Class
      {
         return var_2201;
      }
      
      public function get mimeType() : String
      {
         return var_2203;
      }
      
      public function get fileTypes() : Array
      {
         return var_1339;
      }
   }
}
