package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_1463:Array;
      
      private var var_1728:int;
      
      private var var_1776:int;
      
      private var var_1777:int;
      
      private var var_1778:int;
      
      private var _dayOffsets:Array;
      
      private var var_1775:int;
      
      private var var_1464:Array;
      
      public function MarketplaceItemStats()
      {
         super();
      }
      
      public function get dayOffsets() : Array
      {
         return _dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return var_1463;
      }
      
      public function set averagePrices(param1:Array) : void
      {
         var_1463 = param1.slice();
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         _dayOffsets = param1.slice();
      }
      
      public function get furniTypeId() : int
      {
         return var_1776;
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         var_1464 = param1.slice();
      }
      
      public function set averagePrice(param1:int) : void
      {
         var_1728 = param1;
      }
      
      public function get historyLength() : int
      {
         return var_1777;
      }
      
      public function get furniCategoryId() : int
      {
         return var_1778;
      }
      
      public function get offerCount() : int
      {
         return var_1775;
      }
      
      public function set offerCount(param1:int) : void
      {
         var_1775 = param1;
      }
      
      public function get soldAmounts() : Array
      {
         return var_1464;
      }
      
      public function get averagePrice() : int
      {
         return var_1728;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         var_1778 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         var_1777 = param1;
      }
      
      public function set furniTypeId(param1:int) : void
      {
         var_1776 = param1;
      }
   }
}
