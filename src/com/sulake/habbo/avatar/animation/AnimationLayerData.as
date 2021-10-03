package com.sulake.habbo.avatar.animation
{
   import com.sulake.habbo.avatar.AvatarStructure;
   import com.sulake.habbo.avatar.actions.ActiveActionData;
   import com.sulake.habbo.avatar.actions.IActionDefinition;
   import com.sulake.habbo.avatar.actions.IActiveActionData;
   
   public class AnimationLayerData implements IAnimationLayerData
   {
      
      public static const const_641:String = "bodypart";
      
      public static const const_397:String = "fx";
       
      
      private var _id:String;
      
      private var _dx:int;
      
      private var var_1466:IActiveActionData;
      
      private var _type:String;
      
      private var var_1928:int;
      
      private var var_441:int;
      
      private var var_1014:String;
      
      private var var_1115:int;
      
      private var var_1239:int;
      
      private var var_1238:int;
      
      public function AnimationLayerData(param1:AvatarStructure, param2:XML, param3:String, param4:int, param5:IActionDefinition)
      {
         super();
         var_441 = param4;
         _id = String(param2.@id);
         var_1928 = parseInt(param2.@frame);
         _dx = parseInt(param2.@dx);
         var_1238 = parseInt(param2.@dy);
         var_1239 = parseInt(param2.@dz);
         var_1115 = parseInt(param2.@dd);
         _type = param3;
         var_1014 = String(param2.@base);
         var _loc6_:String = "";
         if(var_1014 != "")
         {
            _loc6_ = String(baseAsInt());
         }
         if(param5 != null)
         {
            var_1466 = new ActiveActionData(param5.state,_loc6_);
            var_1466.definition = param5;
         }
      }
      
      public function get animationFrame() : int
      {
         return var_1928;
      }
      
      public function baseAsInt() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < var_1014.length)
         {
            _loc1_ += var_1014.charCodeAt(_loc2_);
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function get frameCounter() : int
      {
         return var_441;
      }
      
      public function get base() : String
      {
         return var_1014;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function get dx() : int
      {
         return _dx;
      }
      
      public function get dz() : int
      {
         return var_1239;
      }
      
      public function get id() : String
      {
         return _id;
      }
      
      public function get dy() : int
      {
         return var_1238;
      }
      
      public function get action() : IActiveActionData
      {
         return var_1466;
      }
      
      public function get directionOffset() : int
      {
         return var_1115;
      }
   }
}
