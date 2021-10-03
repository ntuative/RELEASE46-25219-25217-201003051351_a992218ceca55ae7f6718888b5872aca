package com.sulake.habbo.widget.messages
{
   public class RoomWidgetSelectOutfitMessage extends RoomWidgetMessage
   {
      
      public static const const_829:String = "select_outfit";
       
      
      private var var_2121:int;
      
      public function RoomWidgetSelectOutfitMessage(param1:int)
      {
         super(const_829);
         var_2121 = param1;
      }
      
      public function get outfitId() : int
      {
         return var_2121;
      }
   }
}
