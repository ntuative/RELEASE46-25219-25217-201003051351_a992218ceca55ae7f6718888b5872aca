package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class LayerData
   {
      
      public static const const_416:int = 255;
      
      public static const INK_DARKEN:int = 3;
      
      public static const const_453:int = 0;
      
      public static const const_983:int = 2;
      
      public static const const_946:int = 1;
      
      public static const const_563:Boolean = false;
      
      public static const const_669:String = "";
      
      public static const const_431:int = 0;
      
      public static const const_423:int = 0;
      
      public static const const_394:int = 0;
       
      
      private var var_1659:int = 0;
      
      private var var_1597:String = "";
      
      private var var_1554:int = 0;
      
      private var var_1662:int = 0;
      
      private var var_1661:Number = 0;
      
      private var var_1663:int = 255;
      
      private var var_1660:Boolean = false;
      
      public function LayerData()
      {
         super();
      }
      
      public function get yOffset() : int
      {
         return var_1659;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            tag = param1.tag;
            ink = param1.ink;
            alpha = param1.alpha;
            ignoreMouse = param1.ignoreMouse;
            xOffset = param1.xOffset;
            yOffset = param1.yOffset;
            zOffset = param1.zOffset;
         }
      }
      
      public function set ink(param1:int) : void
      {
         var_1554 = param1;
      }
      
      public function get zOffset() : Number
      {
         return var_1661;
      }
      
      public function set xOffset(param1:int) : void
      {
         var_1662 = param1;
      }
      
      public function set yOffset(param1:int) : void
      {
         var_1659 = param1;
      }
      
      public function get tag() : String
      {
         return var_1597;
      }
      
      public function get alpha() : int
      {
         return var_1663;
      }
      
      public function get ink() : int
      {
         return var_1554;
      }
      
      public function set zOffset(param1:Number) : void
      {
         var_1661 = param1;
      }
      
      public function get xOffset() : int
      {
         return var_1662;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         var_1660 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return var_1660;
      }
      
      public function set tag(param1:String) : void
      {
         var_1597 = param1;
      }
      
      public function set alpha(param1:int) : void
      {
         var_1663 = param1;
      }
   }
}
