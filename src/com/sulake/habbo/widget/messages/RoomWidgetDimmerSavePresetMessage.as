package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_518:String = "RWSDPM_SAVE_PRESET";
       
      
      private var _color:uint;
      
      private var var_1606:int;
      
      private var var_1607:int;
      
      private var var_1608:Boolean;
      
      private var var_988:int;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_518);
         var_1607 = param1;
         var_1606 = param2;
         _color = param3;
         var_988 = param4;
         var_1608 = param5;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get effectTypeId() : int
      {
         return var_1606;
      }
      
      public function get presetNumber() : int
      {
         return var_1607;
      }
      
      public function get brightness() : int
      {
         return var_988;
      }
      
      public function get apply() : Boolean
      {
         return var_1608;
      }
   }
}
