package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_1082:int = 0;
      
      private var var_1141:int = 0;
      
      private var var_1704:String = "";
      
      private var var_1081:int = 0;
      
      private var var_1706:String = "";
      
      private var var_1701:int = 0;
      
      private var var_1567:String = "";
      
      private var var_1705:int = 0;
      
      private var var_1700:int = 0;
      
      private var var_1702:String = "";
      
      private var var_1703:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         var_1705 = param1;
         var_1702 = param2;
         var_1567 = param3;
         var_1704 = param4;
         var_1706 = param5;
         if(param6)
         {
            var_1141 = 1;
         }
         else
         {
            var_1141 = 0;
         }
         var_1701 = param7;
         var_1700 = param8;
         var_1081 = param9;
         var_1703 = param10;
         var_1082 = param11;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1705,var_1702,var_1567,var_1704,var_1706,var_1141,var_1701,var_1700,var_1081,var_1703,var_1082];
      }
      
      public function dispose() : void
      {
      }
   }
}
