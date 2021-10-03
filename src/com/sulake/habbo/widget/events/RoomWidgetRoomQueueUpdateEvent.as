package com.sulake.habbo.widget.events
{
   public class RoomWidgetRoomQueueUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_434:String = "RWRQUE_SPECTATOR_QUEUE_STATUS";
      
      public static const const_307:String = "RWRQUE_VISITOR_QUEUE_STATUS";
       
      
      private var var_915:int;
      
      private var var_250:Boolean;
      
      private var var_2226:Boolean;
      
      private var var_1400:Boolean;
      
      public function RoomWidgetRoomQueueUpdateEvent(param1:String, param2:int, param3:Boolean, param4:Boolean, param5:Boolean, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_915 = param2;
         var_2226 = param3;
         var_250 = param4;
         var_1400 = param5;
      }
      
      public function get position() : int
      {
         return var_915;
      }
      
      public function get isActive() : Boolean
      {
         return var_250;
      }
      
      public function get isClubQueue() : Boolean
      {
         return var_1400;
      }
      
      public function get hasHabboClub() : Boolean
      {
         return var_2226;
      }
   }
}
