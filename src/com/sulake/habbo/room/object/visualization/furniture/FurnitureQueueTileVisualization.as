package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1124:int = 1;
      
      private static const const_1046:int = 3;
      
      private static const const_1126:int = 2;
      
      private static const const_1125:int = 15;
       
      
      private var var_902:int;
      
      private var var_234:Array;
      
      public function FurnitureQueueTileVisualization()
      {
         var_234 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1126)
         {
            var_234 = new Array();
            var_234.push(const_1124);
            var_902 = const_1125;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(var_902 > 0)
         {
            --var_902;
         }
         if(var_902 == 0)
         {
            if(false)
            {
               super.setAnimation(var_234.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
