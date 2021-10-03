package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_630;
         param1["bitmap"] = const_662;
         param1["border"] = const_718;
         param1["border_notify"] = const_1248;
         param1["button"] = const_438;
         param1["button_thick"] = const_619;
         param1["button_icon"] = const_1207;
         param1["button_group_left"] = const_676;
         param1["button_group_center"] = const_601;
         param1["button_group_right"] = const_725;
         param1["canvas"] = const_519;
         param1["checkbox"] = const_674;
         param1["closebutton"] = const_873;
         param1["container"] = const_331;
         param1["container_button"] = const_719;
         param1["display_object_wrapper"] = const_667;
         param1["dropmenu"] = const_391;
         param1["dropmenu_item"] = const_355;
         param1["frame"] = const_293;
         param1["frame_notify"] = const_1311;
         param1["header"] = const_564;
         param1["icon"] = const_975;
         param1["itemgrid"] = const_964;
         param1["itemgrid_horizontal"] = const_472;
         param1["itemgrid_vertical"] = const_573;
         param1["itemlist"] = const_940;
         param1["itemlist_horizontal"] = const_296;
         param1["itemlist_vertical"] = const_298;
         param1["maximizebox"] = const_1209;
         param1["menu"] = const_1341;
         param1["menu_item"] = WINDOW_TYPE_MENU_ITEM;
         param1["submenu"] = const_857;
         param1["minimizebox"] = const_1372;
         param1["notify"] = const_1352;
         param1["null"] = const_556;
         param1["password"] = const_712;
         param1["radiobutton"] = const_542;
         param1["region"] = const_443;
         param1["restorebox"] = const_1238;
         param1["scaler"] = const_921;
         param1["scaler_horizontal"] = const_1262;
         param1["scaler_vertical"] = const_1324;
         param1["scrollbar_horizontal"] = const_483;
         param1["scrollbar_vertical"] = const_609;
         param1["scrollbar_slider_button_up"] = const_811;
         param1["scrollbar_slider_button_down"] = const_1007;
         param1["scrollbar_slider_button_left"] = const_981;
         param1["scrollbar_slider_button_right"] = const_842;
         param1["scrollbar_slider_bar_horizontal"] = const_979;
         param1["scrollbar_slider_bar_vertical"] = const_915;
         param1["scrollbar_slider_track_horizontal"] = const_845;
         param1["scrollbar_slider_track_vertical"] = const_851;
         param1["scrollable_itemlist"] = const_1288;
         param1["scrollable_itemlist_vertical"] = const_369;
         param1["scrollable_itemlist_horizontal"] = const_883;
         param1["selector"] = const_557;
         param1["selector_list"] = const_555;
         param1["submenu"] = const_857;
         param1["tab_button"] = const_628;
         param1["tab_container_button"] = const_793;
         param1["tab_context"] = const_398;
         param1["tab_content"] = const_874;
         param1["tab_selector"] = WINDOW_TYPE_TAB_SELECTOR;
         param1["text"] = const_635;
         param1["input"] = const_661;
         param1["toolbar"] = const_1204;
         param1["tooltip"] = const_294;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  Logger.log("Overlapping window type code " + _loc3_ + "!");
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
