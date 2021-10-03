package com.sulake.habbo.communication.messages.incoming.inventory.avatareffect
{
   public class AvatarEffect
   {
       
      
      private var var_2006:int;
      
      private var var_1270:int;
      
      private var _type:int;
      
      private var var_2005:int;
      
      public function AvatarEffect()
      {
         super();
      }
      
      public function get inactiveEffectsInInventory() : int
      {
         return var_2005;
      }
      
      public function set secondsLeftIfActive(param1:int) : void
      {
         var_2006 = param1;
      }
      
      public function get duration() : int
      {
         return var_1270;
      }
      
      public function set inactiveEffectsInInventory(param1:int) : void
      {
         var_2005 = param1;
      }
      
      public function set duration(param1:int) : void
      {
         var_1270 = param1;
      }
      
      public function get secondsLeftIfActive() : int
      {
         return var_2006;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function set type(param1:int) : void
      {
         _type = param1;
      }
   }
}
