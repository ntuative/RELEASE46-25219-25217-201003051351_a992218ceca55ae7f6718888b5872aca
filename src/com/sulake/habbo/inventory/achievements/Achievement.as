package com.sulake.habbo.inventory.achievements
{
   import flash.display.BitmapData;
   
   public class Achievement
   {
       
      
      private var var_1658:int;
      
      private var _type:int;
      
      private var _image:BitmapData;
      
      private var var_688:String;
      
      public function Achievement()
      {
         super();
      }
      
      public function set badgeId(param1:String) : void
      {
         var_688 = param1;
      }
      
      public function get level() : int
      {
         return var_1658;
      }
      
      public function set level(param1:int) : void
      {
         var_1658 = param1;
      }
      
      public function set type(param1:int) : void
      {
         _type = param1;
      }
      
      public function set image(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get badgeId() : String
      {
         return var_688;
      }
   }
}
