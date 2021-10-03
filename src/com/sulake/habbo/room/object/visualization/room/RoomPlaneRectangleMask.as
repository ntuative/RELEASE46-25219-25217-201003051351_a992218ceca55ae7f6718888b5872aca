package com.sulake.habbo.room.object.visualization.room
{
   public class RoomPlaneRectangleMask
   {
       
      
      private var var_2042:Number = 0;
      
      private var var_1914:Number = 0;
      
      private var var_1913:Number = 0;
      
      private var var_2041:Number = 0;
      
      public function RoomPlaneRectangleMask(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         var_1914 = param1;
         var_1913 = param2;
         var_2042 = param3;
         var_2041 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return var_1914;
      }
      
      public function get leftSideLength() : Number
      {
         return var_2042;
      }
      
      public function get rightSideLoc() : Number
      {
         return var_1913;
      }
      
      public function get rightSideLength() : Number
      {
         return var_2041;
      }
   }
}
