package com.sulake.habbo.widget.messages
{
   public class RoomWidgetFurniActionMessage extends RoomWidgetMessage
   {
      
      public static const const_272:String = "RWFAM_MOVE";
      
      public static const const_575:String = "RWFUAM_ROTATE";
      
      public static const const_590:String = "RWFAM_PICKUP";
       
      
      private var var_1617:int = 0;
      
      private var var_1975:int = 0;
      
      public function RoomWidgetFurniActionMessage(param1:String, param2:int, param3:int)
      {
         super(param1);
         var_1617 = param2;
         var_1975 = param3;
      }
      
      public function get furniId() : int
      {
         return var_1617;
      }
      
      public function get furniCategory() : int
      {
         return var_1975;
      }
   }
}
