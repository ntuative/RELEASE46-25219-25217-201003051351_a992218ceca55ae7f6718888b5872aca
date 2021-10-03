package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_585:Array;
      
      private var var_1157:int;
      
      private var var_1445:Array;
      
      private var var_584:Array;
      
      private var var_1795:Boolean = false;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         var_1795 = _loc2_.isWrappingEnabled;
         var_1157 = _loc2_.wrappingPrice;
         var_1445 = _loc2_.stuffTypes;
         var_584 = _loc2_.boxTypes;
         var_585 = _loc2_.ribbonTypes;
      }
      
      public function get ribbonTypes() : Array
      {
         return var_585;
      }
      
      public function get stuffTypes() : Array
      {
         return var_1445;
      }
      
      public function get price() : int
      {
         return var_1157;
      }
      
      public function get boxTypes() : Array
      {
         return var_584;
      }
      
      public function get isEnabled() : Boolean
      {
         return var_1795;
      }
   }
}
