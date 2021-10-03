package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureBottleVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1046:int = -1;
      
      private static const const_759:int = 20;
      
      private static const const_493:int = 9;
       
      
      private var var_534:Boolean = false;
      
      private var var_234:Array;
      
      public function FurnitureBottleVisualization()
      {
         var_234 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            var_534 = true;
            var_234 = new Array();
            var_234.push(const_1046);
            return;
         }
         if(param1 >= 0 && param1 <= 7)
         {
            if(var_534)
            {
               var_534 = false;
               var_234 = new Array();
               var_234.push(const_759);
               var_234.push(const_493 + param1);
               var_234.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(super.getLastFramePlayed(0))
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
