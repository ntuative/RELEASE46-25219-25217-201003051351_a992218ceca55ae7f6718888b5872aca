package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_1369:String;
      
      private var var_990:String;
      
      private var var_1831:Boolean;
      
      private var var_1435:int;
      
      private var var_1711:int;
      
      private var var_1832:Boolean;
      
      private var var_1712:String = "";
      
      private var var_1710:Boolean;
      
      private var _category:int;
      
      private var _objId:int;
      
      private var var_1205:int;
      
      private var var_1716:Boolean;
      
      private var var_1709:int = -1;
      
      private var var_1713:int;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         var_1711 = param1;
         var_990 = param2;
         _objId = param3;
         var_1205 = param4;
         _category = param5;
         var_1369 = param6;
         var_1831 = param7;
         var_1710 = param8;
         var_1716 = param9;
         var_1832 = param10;
         var_1713 = param11;
      }
      
      public function get slotId() : String
      {
         return var_1712;
      }
      
      public function get extra() : int
      {
         return var_1435;
      }
      
      public function get classId() : int
      {
         return var_1205;
      }
      
      public function get category() : int
      {
         return _category;
      }
      
      public function get isSellable() : Boolean
      {
         return var_1832;
      }
      
      public function get isGroupable() : Boolean
      {
         return var_1831;
      }
      
      public function get stripId() : int
      {
         return var_1711;
      }
      
      public function get stuffData() : String
      {
         return var_1369;
      }
      
      public function get songId() : int
      {
         return var_1709;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         var_1712 = param1;
         var_1435 = param2;
      }
      
      public function get itemType() : String
      {
         return var_990;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get expiryTime() : int
      {
         return var_1713;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_1716;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_1710;
      }
   }
}
