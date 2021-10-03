package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageOfferData
   {
       
      
      private var var_759:Array;
      
      private var var_766:int;
      
      private var var_1134:String;
      
      private var _offerId:int;
      
      private var var_767:int;
      
      public function CatalogPageMessageOfferData(param1:IMessageDataWrapper)
      {
         super();
         _offerId = param1.readInteger();
         var_1134 = param1.readString();
         var_766 = param1.readInteger();
         var_767 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         var_759 = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            var_759.push(new CatalogPageMessageProductData(param1));
            _loc3_++;
         }
      }
      
      public function get products() : Array
      {
         return var_759;
      }
      
      public function get priceInCredits() : int
      {
         return var_766;
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
   }
}
