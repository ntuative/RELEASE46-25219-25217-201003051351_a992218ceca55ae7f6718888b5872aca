package com.sulake.habbo.avatar
{
   import com.sulake.habbo.avatar.actions.IActionDefinition;
   import com.sulake.habbo.avatar.structure.figure.IPartColor;
   import flash.geom.ColorTransform;
   
   public class AvatarImagePartContainer
   {
       
      
      private var _frames:Array;
      
      private var var_1872:int;
      
      private var var_1869:String;
      
      private var var_1466:IActionDefinition;
      
      private var var_1867:Boolean;
      
      private var _color:IPartColor;
      
      private var var_1871:String;
      
      private var var_1870:String;
      
      private var var_1738:Boolean;
      
      private var var_1868:ColorTransform;
      
      private var var_1820:int;
      
      public function AvatarImagePartContainer(param1:String, param2:String, param3:int, param4:IPartColor, param5:Array, param6:IActionDefinition, param7:Boolean, param8:int, param9:String = "", param10:Boolean = false, param11:Number = 1)
      {
         super();
         var_1869 = param1;
         var_1871 = param2;
         var_1872 = param3;
         _color = param4;
         _frames = param5;
         var_1466 = param6;
         var_1738 = param7;
         var_1820 = param8;
         var_1870 = param9;
         var_1867 = param10;
         var_1868 = new ColorTransform(1,1,1,param11);
      }
      
      public function get isColorable() : Boolean
      {
         return var_1738;
      }
      
      public function get partType() : String
      {
         return var_1871;
      }
      
      public function getFrameIndex(param1:int) : int
      {
         return 0;
      }
      
      public function get paletteMapId() : int
      {
         return var_1820;
      }
      
      public function get isBlendable() : Boolean
      {
         return var_1867;
      }
      
      public function get color() : IPartColor
      {
         return _color;
      }
      
      public function get partId() : int
      {
         return var_1872;
      }
      
      public function get flippedPartType() : String
      {
         return var_1870;
      }
      
      public function get bodyPartId() : String
      {
         return var_1869;
      }
      
      public function get action() : IActionDefinition
      {
         return var_1466;
      }
      
      public function get blendTransform() : ColorTransform
      {
         return var_1868;
      }
   }
}
