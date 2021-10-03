package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var var_1157:int;
      
      private var var_1727:int = -1;
      
      private var var_364:int;
      
      private var var_1728:int;
      
      private var var_1618:int;
      
      private var _offerId:int;
      
      private var var_1156:int;
      
      private var var_1617:int;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int, param8:int = -1)
      {
         super();
         _offerId = param1;
         var_1617 = param2;
         var_1618 = param3;
         var_1157 = param4;
         var_364 = param5;
         var_1727 = param6;
         var_1728 = param7;
         var_1156 = param8;
      }
      
      public function get status() : int
      {
         return var_364;
      }
      
      public function get price() : int
      {
         return var_1157;
      }
      
      public function get timeLeftMinutes() : int
      {
         return var_1727;
      }
      
      public function get offerCount() : int
      {
         return var_1156;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get furniType() : int
      {
         return var_1618;
      }
      
      public function get averagePrice() : int
      {
         return var_1728;
      }
      
      public function get furniId() : int
      {
         return var_1617;
      }
   }
}
