package com.sulake.habbo.inventory.items
{
   public class FloorItem implements IItem
   {
       
      
      protected var var_2254:Boolean;
      
      protected var var_1435:Number;
      
      protected var var_2257:Boolean;
      
      protected var _type:int;
      
      protected var var_2256:Boolean;
      
      protected var var_1709:int;
      
      protected var var_2253:Boolean;
      
      protected var var_1369:String;
      
      protected var var_1803:int;
      
      protected var _id:int;
      
      protected var _ref:int;
      
      protected var var_1712:String;
      
      protected var var_1807:Boolean;
      
      protected var _category:int;
      
      protected var var_1806:int;
      
      protected var var_2255:int;
      
      protected var var_1804:int;
      
      public function FloorItem(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:Boolean, param7:Boolean, param8:Boolean, param9:String, param10:Number, param11:int, param12:int, param13:int, param14:int, param15:String, param16:int)
      {
         super();
         _id = param1;
         _type = param2;
         _ref = param3;
         _category = param4;
         var_1807 = param5;
         var_2253 = param6;
         var_2254 = param7;
         var_2257 = param8;
         var_1369 = param9;
         var_1435 = param10;
         var_2255 = param11;
         var_1804 = param12;
         var_1806 = param13;
         var_1803 = param14;
         var_1712 = param15;
         var_1709 = param16;
      }
      
      public function get locked() : Boolean
      {
         return var_2256;
      }
      
      public function get category() : int
      {
         return _category;
      }
      
      public function get extra() : Number
      {
         return var_1435;
      }
      
      public function set locked(param1:Boolean) : void
      {
         var_2256 = param1;
      }
      
      public function get ref() : int
      {
         return _ref;
      }
      
      public function get songId() : int
      {
         return var_1709;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get sellable() : Boolean
      {
         return var_2257;
      }
      
      public function get slotId() : String
      {
         return var_1712;
      }
      
      public function get expires() : int
      {
         return var_2255;
      }
      
      public function get creationYear() : int
      {
         return var_1803;
      }
      
      public function get creationDay() : int
      {
         return var_1804;
      }
      
      public function get stuffData() : String
      {
         return var_1369;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get tradeable() : Boolean
      {
         return var_2253;
      }
      
      public function get groupable() : Boolean
      {
         return var_1807;
      }
      
      public function get creationMonth() : int
      {
         return var_1806;
      }
      
      public function get recyclable() : Boolean
      {
         return var_2254;
      }
   }
}
