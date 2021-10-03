package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_220:String = "e";
      
      public static const const_78:String = "i";
      
      public static const const_77:String = "s";
       
      
      private var var_1031:String;
      
      private var var_1252:String;
      
      private var var_1251:int;
      
      private var var_1948:int;
      
      private var var_1032:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         var_1252 = param1.readString();
         var_1948 = param1.readInteger();
         var_1031 = param1.readString();
         var_1032 = param1.readInteger();
         var_1251 = param1.readInteger();
      }
      
      public function get productCount() : int
      {
         return var_1032;
      }
      
      public function get productType() : String
      {
         return var_1252;
      }
      
      public function get expiration() : int
      {
         return var_1251;
      }
      
      public function get furniClassId() : int
      {
         return var_1948;
      }
      
      public function get extraParam() : String
      {
         return var_1031;
      }
   }
}
