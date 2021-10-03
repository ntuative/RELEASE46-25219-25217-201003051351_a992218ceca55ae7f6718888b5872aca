package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageProductData;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer
   {
      
      public static const const_956:String = "price_type_none";
      
      public static const const_404:String = "pricing_model_multi";
      
      public static const const_462:String = "price_type_credits";
      
      public static const const_445:String = "price_type_credits_and_pixels";
      
      public static const const_382:String = "pricing_model_bundle";
      
      public static const const_421:String = "pricing_model_single";
      
      public static const const_572:String = "price_type_credits_or_credits_and_pixels";
      
      public static const const_1293:String = "pricing_model_unknown";
      
      public static const const_479:String = "price_type_pixels";
       
      
      private var var_766:int;
      
      private var _offerId:int;
      
      private var var_767:int;
      
      private var var_371:String;
      
      private var var_540:String;
      
      private var var_1673:int;
      
      private var var_659:ICatalogPage;
      
      private var var_1134:String;
      
      private var var_372:IProductContainer;
      
      public function Offer(param1:CatalogPageMessageOfferData, param2:ICatalogPage)
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         super();
         _offerId = param1.offerId;
         var_1134 = param1.localizationId;
         var_766 = param1.priceInCredits;
         var_767 = param1.priceInPixels;
         var_659 = param2;
         var _loc3_:Array = new Array();
         for each(_loc4_ in param1.products)
         {
            _loc5_ = param2.viewer.catalog.getProductData(param1.localizationId);
            _loc6_ = param2.viewer.catalog.getFurnitureData(_loc4_.furniClassId,_loc4_.productType);
            _loc7_ = new Product(_loc4_,_loc5_,_loc6_);
            _loc3_.push(_loc7_);
         }
         analyzePricingModel(_loc3_);
         analyzePriceType();
         createProductContainer(_loc3_);
      }
      
      public function get pricingModel() : String
      {
         return var_371;
      }
      
      public function get page() : ICatalogPage
      {
         return var_659;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         var_1673 = param1;
      }
      
      public function get productContainer() : IProductContainer
      {
         return var_372;
      }
      
      public function get localizationId() : String
      {
         return var_1134;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get priceInPixels() : int
      {
         return var_767;
      }
      
      public function dispose() : void
      {
         _offerId = 0;
         var_1134 = "";
         var_766 = 0;
         var_767 = 0;
         var_659 = null;
         if(var_372 != null)
         {
            var_372.dispose();
            var_372 = null;
         }
      }
      
      public function get priceType() : String
      {
         return var_540;
      }
      
      public function get previewCallbackId() : int
      {
         return var_1673;
      }
      
      public function get priceInCredits() : int
      {
         return var_766;
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               var_371 = const_421;
            }
            else
            {
               var_371 = const_404;
            }
         }
         else if(param1.length > 1)
         {
            var_371 = const_382;
         }
         else
         {
            var_371 = const_1293;
         }
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(var_371)
         {
            case const_421:
               var_372 = new SingleProductContainer(this,param1);
               break;
            case const_404:
               var_372 = new MultiProductContainer(this,param1);
               break;
            case const_382:
               var_372 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + var_371);
         }
      }
      
      private function analyzePriceType() : void
      {
         if(var_766 > 0 && var_767 > 0)
         {
            var_540 = const_445;
         }
         else if(var_766 > 0)
         {
            var_540 = const_462;
         }
         else if(var_767 > 0)
         {
            var_540 = const_479;
         }
         else
         {
            var_540 = const_956;
         }
      }
   }
}
