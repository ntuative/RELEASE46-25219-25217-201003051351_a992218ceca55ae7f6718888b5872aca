package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var var_1623:Boolean = false;
      
      private var var_1622:Boolean = false;
      
      private var var_1630:String = "";
      
      private var _type:String = "";
      
      private var var_1627:Boolean = false;
      
      private var var_1621:Number = 0;
      
      private var var_1624:Number = 0;
      
      private var var_1628:Number = 0;
      
      private var var_1626:String = "";
      
      private var var_1629:Number = 0;
      
      private var var_1625:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:Number, param5:Number, param6:Number = 0, param7:Number = 0, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false)
      {
         super();
         _type = param1;
         var_1626 = param2;
         var_1630 = param3;
         var_1624 = param4;
         var_1628 = param5;
         var_1621 = param6;
         var_1629 = param7;
         var_1625 = param8;
         var_1622 = param9;
         var_1627 = param10;
         var_1623 = param11;
      }
      
      public function get ctrlKey() : Boolean
      {
         return var_1625;
      }
      
      public function get buttonDown() : Boolean
      {
         return var_1623;
      }
      
      public function get localX() : Number
      {
         return var_1621;
      }
      
      public function get localY() : Number
      {
         return var_1629;
      }
      
      public function get canvasId() : String
      {
         return var_1626;
      }
      
      public function get altKey() : Boolean
      {
         return var_1622;
      }
      
      public function get spriteTag() : String
      {
         return var_1630;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function get screenX() : Number
      {
         return var_1624;
      }
      
      public function get screenY() : Number
      {
         return var_1628;
      }
      
      public function get shiftKey() : Boolean
      {
         return var_1627;
      }
   }
}
