package com.sulake.habbo.inventory.furni
{
   import flash.display.BitmapData;
   
   public class FurniItem
   {
       
      
      private var _isSelected:Boolean = false;
      
      private var var_1711:int;
      
      private var var_1710:Boolean;
      
      private var var_1709:int;
      
      private var var_1369:String;
      
      private var var_1715:Boolean = false;
      
      private var var_1713:int;
      
      private var var_435:int;
      
      private var var_990:String;
      
      private var var_1712:String;
      
      private var _image:BitmapData;
      
      private var _objId:int;
      
      private var var_1205:int;
      
      private var var_1716:Boolean;
      
      private var var_1714:int;
      
      public function FurniItem(param1:int, param2:String, param3:int, param4:int, param5:String, param6:Boolean, param7:Boolean, param8:int, param9:String, param10:int)
      {
         super();
         var_1711 = param1;
         var_990 = param2;
         _objId = param3;
         var_1205 = param4;
         var_1369 = param5;
         var_1710 = param6;
         var_1716 = param7;
         var_1713 = param8;
         var_1712 = param9;
         var_1709 = param10;
         var_435 = -1;
      }
      
      public function get songId() : int
      {
         return var_1709;
      }
      
      public function get iconCallbackId() : int
      {
         return var_435;
      }
      
      public function get expiryTime() : int
      {
         return var_1713;
      }
      
      public function set prevCallbackId(param1:int) : void
      {
         var_1714 = param1;
      }
      
      public function set isLocked(param1:Boolean) : void
      {
         var_1715 = param1;
      }
      
      public function set iconCallbackId(param1:int) : void
      {
         var_435 = param1;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_1716;
      }
      
      public function get slotId() : String
      {
         return var_1712;
      }
      
      public function get classId() : int
      {
         return var_1205;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_1710;
      }
      
      public function get stuffData() : String
      {
         return var_1369;
      }
      
      public function set iconImage(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         _isSelected = param1;
      }
      
      public function get stripId() : int
      {
         return var_1711;
      }
      
      public function get isLocked() : Boolean
      {
         return var_1715;
      }
      
      public function get prevCallbackId() : int
      {
         return var_1714;
      }
      
      public function get iconImage() : BitmapData
      {
         return _image;
      }
      
      public function get isSelected() : Boolean
      {
         return _isSelected;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get itemType() : String
      {
         return var_990;
      }
   }
}
