package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceItemStatsParser implements IMessageParser
   {
       
      
      private var var_1463:Array;
      
      private var var_1728:int;
      
      private var var_1776:int;
      
      private var var_1778:int;
      
      private var var_1777:int;
      
      private var _dayOffsets:Array;
      
      private var var_1775:int;
      
      private var var_1464:Array;
      
      public function MarketplaceItemStatsParser()
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
      
      public function get furniTypeId() : int
      {
         return var_1776;
      }
      
      public function get historyLength() : int
      {
         return var_1777;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get furniCategoryId() : int
      {
         return var_1778;
      }
      
      public function get offerCount() : int
      {
         return var_1775;
      }
      
      public function get soldAmounts() : Array
      {
         return var_1464;
      }
      
      public function get averagePrice() : int
      {
         return var_1728;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1728 = param1.readInteger();
         var_1775 = param1.readInteger();
         var_1777 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         _dayOffsets = [];
         var_1463 = [];
         var_1464 = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _dayOffsets.push(param1.readInteger());
            var_1463.push(param1.readInteger());
            var_1464.push(param1.readInteger());
            _loc3_++;
         }
         var_1778 = param1.readInteger();
         var_1776 = param1.readInteger();
         return true;
      }
   }
}
