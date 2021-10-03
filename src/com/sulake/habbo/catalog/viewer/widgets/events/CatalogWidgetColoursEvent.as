package com.sulake.habbo.catalog.viewer.widgets.events
{
   import flash.events.Event;
   
   public class CatalogWidgetColoursEvent extends Event
   {
       
      
      private var var_1163:Array;
      
      private var var_1783:String;
      
      private var var_1784:String;
      
      private var var_1782:String;
      
      public function CatalogWidgetColoursEvent(param1:Array, param2:String, param3:String, param4:String, param5:Boolean = false, param6:Boolean = false)
      {
         super(WidgetEvent.CWE_COLOUR_ARRAY,param5,param6);
         var_1163 = param1;
         var_1783 = param2;
         var_1784 = param3;
         var_1782 = param4;
      }
      
      public function get colours() : Array
      {
         return var_1163;
      }
      
      public function get backgroundAssetName() : String
      {
         return var_1783;
      }
      
      public function get colourAssetName() : String
      {
         return var_1784;
      }
      
      public function get chosenColourAssetName() : String
      {
         return var_1782;
      }
   }
}
