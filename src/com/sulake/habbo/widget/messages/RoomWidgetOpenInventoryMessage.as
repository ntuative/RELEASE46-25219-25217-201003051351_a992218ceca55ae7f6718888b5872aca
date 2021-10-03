package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_796:String = "inventory_badges";
      
      public static const const_1333:String = "inventory_clothes";
      
      public static const const_1313:String = "inventory_furniture";
      
      public static const const_633:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_955:String = "inventory_effects";
       
      
      private var var_1605:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_633);
         var_1605 = param1;
      }
      
      public function get inventoryType() : String
      {
         return var_1605;
      }
   }
}
