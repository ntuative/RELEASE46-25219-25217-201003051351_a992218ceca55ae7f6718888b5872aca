package com.sulake.habbo.help.cfh.data
{
   import com.sulake.core.utils.Map;
   
   public class UserRegistry
   {
      
      private static const const_1084:int = 80;
       
      
      private var var_503:Map;
      
      private var var_703:String = "";
      
      private var var_1290:Array;
      
      public function UserRegistry()
      {
         var_503 = new Map();
         var_1290 = new Array();
         super();
      }
      
      private function addRoomNameForMissing() : void
      {
         var _loc1_:* = null;
         while(false)
         {
            _loc1_ = var_503.getValue(var_1290.shift());
            if(_loc1_ != null)
            {
               _loc1_.roomName = var_703;
            }
         }
      }
      
      public function registerUser(param1:int, param2:String, param3:Boolean = true) : void
      {
         var _loc4_:* = null;
         if(var_503.getValue(param1) != null)
         {
            var_503.remove(param1);
         }
         if(param3)
         {
            _loc4_ = new UserRegistryItem(param1,param2,var_703);
         }
         else
         {
            _loc4_ = new UserRegistryItem(param1,param2);
         }
         if(param3 && var_703 == "")
         {
            var_1290.push(param1);
         }
         var_503.add(param1,_loc4_);
         purgeUserIndex();
      }
      
      public function getRegistry() : Map
      {
         return var_503;
      }
      
      public function unregisterRoom() : void
      {
         var_703 = "";
      }
      
      private function purgeUserIndex() : void
      {
         var _loc1_:int = 0;
         while(var_503.length > const_1084)
         {
            _loc1_ = var_503.getKey(0);
            var_503.remove(_loc1_);
         }
      }
      
      public function registerRoom(param1:String) : void
      {
         var_703 = param1;
         if(var_703 != "")
         {
            addRoomNameForMissing();
         }
      }
   }
}
