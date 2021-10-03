package com.sulake.core.window.graphics.renderer
{
   import flash.geom.Rectangle;
   
   public class SkinLayoutEntity implements ISkinLayoutEntity
   {
      
      public static const const_256:uint = 1;
      
      public static const const_366:uint = 0;
      
      public static const const_840:uint = 8;
      
      public static const const_261:uint = 4;
      
      public static const const_419:uint = 2;
       
      
      private var var_409:uint;
      
      private var var_1988:uint;
      
      private var _color:uint;
      
      private var _name:String;
      
      private var var_1989:uint;
      
      private var var_98:Rectangle;
      
      private var var_616:Array;
      
      private var _id:uint;
      
      public function SkinLayoutEntity(param1:uint, param2:String, param3:Rectangle, param4:uint = 4.294967295E9, param5:uint = 100, param6:uint = 0, param7:uint = 0)
      {
         super();
         _id = param1;
         _name = param2;
         var_98 = param3;
         _color = param4;
         var_409 = param5;
         var_1988 = param6;
         var_1989 = param7;
         var_616 = new Array();
      }
      
      public function get scaleH() : uint
      {
         return var_1988;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get blend() : uint
      {
         return var_409;
      }
      
      public function get scaleV() : uint
      {
         return var_1989;
      }
      
      public function get tags() : Array
      {
         return var_616;
      }
      
      public function get id() : uint
      {
         return _id;
      }
      
      public function dispose() : void
      {
         var_98 = null;
         var_616 = null;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get region() : Rectangle
      {
         return var_98;
      }
   }
}
