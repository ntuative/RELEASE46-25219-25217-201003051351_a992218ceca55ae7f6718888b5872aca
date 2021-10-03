package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_643:String = "RWOCM_CLUB_MAIN";
      
      public static const const_503:String = "RWGOI_MESSAGE_OPEN_CATALOG";
       
      
      private var var_1698:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_503);
         var_1698 = param1;
      }
      
      public function get pageKey() : String
      {
         return var_1698;
      }
   }
}
