package com.sulake.habbo.communication.messages.incoming.marketplace
{
   import flash.display.BitmapData;
   
   public class MarketPlaceOwnOffer
   {
      
      public static const const_1578:int = 2;
      
      public static const const_1465:int = 1;
      
      public static const const_1593:int = 0;
       
      
      private var var_1157:int;
      
      private var var_364:int;
      
      private var var_2350:int;
      
      private var _offerId:int;
      
      private var var_1618:int;
      
      private var var_1617:int;
      
      private var _image:BitmapData;
      
      public function MarketPlaceOwnOffer(param1:int, param2:int, param3:int, param4:int)
      {
         super();
         _offerId = param1;
         var_1617 = param2;
         var_1618 = param3;
         var_1157 = param4;
      }
      
      public function get furniId() : int
      {
         return var_1617;
      }
      
      public function get furniType() : int
      {
         return var_1618;
      }
      
      public function get price() : int
      {
         return var_1157;
      }
      
      public function set image(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
   }
}
