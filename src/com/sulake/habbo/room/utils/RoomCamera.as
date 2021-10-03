package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_339:Number = 0.5;
      
      private static const const_763:int = 3;
      
      private static const const_1073:Number = 1;
       
      
      private var var_1998:Boolean = false;
      
      private var var_1997:Boolean = false;
      
      private var var_1033:int = 0;
      
      private var var_259:Vector3d = null;
      
      private var var_2004:int = 0;
      
      private var var_1996:int = 0;
      
      private var var_1995:Boolean = false;
      
      private var var_2003:int = -2;
      
      private var var_2001:Boolean = false;
      
      private var var_2002:int = 0;
      
      private var var_2000:int = -1;
      
      private var var_398:Vector3d = null;
      
      private var var_1999:int = 0;
      
      public function RoomCamera()
      {
         super();
      }
      
      public function get roomWd() : int
      {
         return var_2004;
      }
      
      public function get targetId() : int
      {
         return var_2000;
      }
      
      public function set roomHt(param1:int) : void
      {
         var_2002 = param1;
      }
      
      public function set roomWd(param1:int) : void
      {
         var_2004 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         var_1998 = param1;
      }
      
      public function set targetId(param1:int) : void
      {
         var_2000 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         var_1997 = param1;
      }
      
      public function dispose() : void
      {
         var_398 = null;
         var_259 = null;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(var_398 == null)
         {
            var_398 = new Vector3d();
         }
         var_398.assign(param1);
         var_1033 = 0;
      }
      
      public function get targetCategory() : int
      {
         return var_2003;
      }
      
      public function get screenHt() : int
      {
         return var_1999;
      }
      
      public function set screenWd(param1:int) : void
      {
         var_1996 = param1;
      }
      
      public function get location() : IVector3d
      {
         return var_259;
      }
      
      public function set screenHt(param1:int) : void
      {
         var_1999 = param1;
      }
      
      public function get roomHt() : int
      {
         return var_2002;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return var_1998;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return var_1997;
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:* = null;
         if(var_398 != null && var_259 != null)
         {
            ++var_1033;
            _loc2_ = Vector3d.dif(var_398,var_259);
            if(_loc2_.length <= const_339)
            {
               var_259 = var_398;
               var_398 = null;
            }
            else
            {
               _loc2_.div(_loc2_.length);
               if(_loc2_.length < const_339 * (const_763 + 1))
               {
                  _loc2_.mul(const_339);
               }
               else if(var_1033 <= const_763)
               {
                  _loc2_.mul(const_339);
               }
               else
               {
                  _loc2_.mul(const_1073);
               }
               var_259 = Vector3d.sum(var_259,_loc2_);
            }
         }
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         var_1995 = param1;
      }
      
      public function get screenWd() : int
      {
         return var_1996;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         var_2001 = param1;
      }
      
      public function set targetCategory(param1:int) : void
      {
         var_2003 = param1;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(var_259 != null)
         {
            return;
         }
         var_259 = new Vector3d();
         var_259.assign(param1);
      }
      
      public function get centeredLocX() : Boolean
      {
         return var_1995;
      }
      
      public function get centeredLocY() : Boolean
      {
         return var_2001;
      }
   }
}
