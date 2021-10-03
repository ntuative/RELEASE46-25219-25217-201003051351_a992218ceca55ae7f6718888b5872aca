package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_990:String;
      
      private var var_1781:int;
      
      private var var_1808:int;
      
      private var var_1435:int;
      
      private var var_1803:int;
      
      private var _category:int;
      
      private var var_2355:int;
      
      private var var_1804:int;
      
      private var var_1805:int;
      
      private var var_1809:int;
      
      private var var_1806:int;
      
      private var var_1807:Boolean;
      
      private var var_1369:String;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         var_1781 = param1;
         var_990 = param2;
         var_1808 = param3;
         var_1809 = param4;
         _category = param5;
         var_1369 = param6;
         var_1435 = param7;
         var_1805 = param8;
         var_1804 = param9;
         var_1806 = param10;
         var_1803 = param11;
         var_1807 = param12;
      }
      
      public function get itemTypeID() : int
      {
         return var_1809;
      }
      
      public function get extra() : int
      {
         return var_1435;
      }
      
      public function get stuffData() : String
      {
         return var_1369;
      }
      
      public function get groupable() : Boolean
      {
         return var_1807;
      }
      
      public function get creationMonth() : int
      {
         return var_1806;
      }
      
      public function get roomItemID() : int
      {
         return var_1808;
      }
      
      public function get itemType() : String
      {
         return var_990;
      }
      
      public function get itemID() : int
      {
         return var_1781;
      }
      
      public function get songID() : int
      {
         return var_1435;
      }
      
      public function get timeToExpiration() : int
      {
         return var_1805;
      }
      
      public function get creationYear() : int
      {
         return var_1803;
      }
      
      public function get creationDay() : int
      {
         return var_1804;
      }
      
      public function get category() : int
      {
         return _category;
      }
   }
}
