package com.sulake.habbo.catalog.marketplace
{
   import flash.display.BitmapData;
   
   public class MarketPlaceOfferData
   {
       
      
      private var var_1726:int;
      
      private var var_1157:int;
      
      private var var_1728:int;
      
      private var var_1727:int = -1;
      
      private var var_364:int;
      
      private var var_1618:int;
      
      private var _image:BitmapData;
      
      private var _offerId:int;
      
      private var var_1156:int;
      
      private var var_1617:int;
      
      public function MarketPlaceOfferData(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int = -1)
      {
         super();
         _offerId = param1;
         var_1617 = param2;
         var_1618 = param3;
         var_1157 = param4;
         var_364 = param5;
         var_1728 = param6;
         var_1156 = param7;
      }
      
      public function set imageCallback(param1:int) : void
      {
         var_1726 = param1;
      }
      
      public function get imageCallback() : int
      {
         return var_1726;
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
      
      public function set timeLeftMinutes(param1:int) : void
      {
         var_1727 = param1;
      }
      
      public function dispose() : void
      {
         if(_image)
         {
            _image.dispose();
            _image = null;
         }
      }
      
      public function set price(param1:int) : void
      {
         var_1157 = param1;
      }
      
      public function set offerCount(param1:int) : void
      {
         var_1156 = param1;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get status() : int
      {
         return var_364;
      }
      
      public function get averagePrice() : int
      {
         return var_1728;
      }
      
      public function set offerId(param1:int) : void
      {
         _offerId = param1;
      }
      
      public function set image(param1:BitmapData) : void
      {
         if(_image != null)
         {
            _image.dispose();
         }
         _image = param1;
      }
      
      public function get furniId() : int
      {
         return var_1617;
      }
   }
}
