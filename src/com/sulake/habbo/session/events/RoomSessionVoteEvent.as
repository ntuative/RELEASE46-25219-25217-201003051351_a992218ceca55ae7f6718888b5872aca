package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionVoteEvent extends RoomSessionEvent
   {
      
      public static const const_120:String = "RSPE_VOTE_RESULT";
      
      public static const const_128:String = "RSPE_VOTE_QUESTION";
       
      
      private var var_1211:int = 0;
      
      private var var_1024:String = "";
      
      private var var_670:Array;
      
      private var var_1002:Array;
      
      public function RoomSessionVoteEvent(param1:String, param2:IRoomSession, param3:String, param4:Array, param5:Array = null, param6:int = 0, param7:Boolean = false, param8:Boolean = false)
      {
         var_1002 = [];
         var_670 = [];
         super(param1,param2,param7,param8);
         var_1024 = param3;
         var_1002 = param4;
         var_670 = param5;
         if(var_670 == null)
         {
            var_670 = [];
         }
         var_1211 = param6;
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
