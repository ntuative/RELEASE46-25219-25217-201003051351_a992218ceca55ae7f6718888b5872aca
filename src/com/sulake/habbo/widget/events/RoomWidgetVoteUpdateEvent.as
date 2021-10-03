package com.sulake.habbo.widget.events
{
   public class RoomWidgetVoteUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_120:String = "RWPUE_VOTE_RESULT";
      
      public static const const_128:String = "RWPUE_VOTE_QUESTION";
       
      
      private var var_1211:int;
      
      private var var_1024:String;
      
      private var var_670:Array;
      
      private var var_1002:Array;
      
      public function RoomWidgetVoteUpdateEvent(param1:String, param2:String, param3:Array, param4:Array = null, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_1024 = param2;
         var_1002 = param3;
         var_670 = param4;
         if(var_670 == null)
         {
            var_670 = [];
         }
         var_1211 = param5;
      }
      
      public function get votes() : Array
      {
         return var_670.slice();
      }
      
      public function get totalVotes() : int
      {
         return var_1211;
      }
      
      public function get question() : String
      {
         return var_1024;
      }
      
      public function get choices() : Array
      {
         return var_1002.slice();
      }
   }
}
