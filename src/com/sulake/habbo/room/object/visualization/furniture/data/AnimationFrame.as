package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class AnimationFrame
   {
      
      public static const const_627:int = -1;
      
      public static const const_815:int = -1;
       
      
      private var _y:int = 0;
      
      private var var_2199:int = -1;
      
      private var var_86:int = 0;
      
      private var var_1338:int = 1;
      
      private var var_903:int = 1;
      
      private var var_2198:Boolean = false;
      
      private var var_2200:int = 0;
      
      private var _id:int = 0;
      
      public function AnimationFrame(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:int = -1, param7:int = 0)
      {
         super();
         _id = param1;
         var_86 = param2;
         _y = param3;
         var_2198 = param5;
         if(param4 < 0)
         {
            param4 = const_627;
         }
         var_903 = param4;
         var_1338 = param4;
         if(param6 >= 0)
         {
            var_2199 = param6;
            var_2200 = param7;
         }
      }
      
      public function get y() : int
      {
         return _y;
      }
      
      public function set remainingFrameRepeats(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(var_903 > 0 && param1 > var_903)
         {
            param1 = var_903;
         }
         var_1338 = param1;
      }
      
      public function get frameRepeats() : int
      {
         return var_903;
      }
      
      public function get activeSequenceOffset() : int
      {
         return var_2200;
      }
      
      public function get id() : int
      {
         if(_id >= 0)
         {
            return _id;
         }
         return -_id * Math.random();
      }
      
      public function get remainingFrameRepeats() : int
      {
         if(var_903 < 0)
         {
            return const_627;
         }
         return var_1338;
      }
      
      public function get activeSequence() : int
      {
         return var_2199;
      }
      
      public function get isLastFrame() : Boolean
      {
         return var_2198;
      }
      
      public function get x() : int
      {
         return var_86;
      }
   }
}
