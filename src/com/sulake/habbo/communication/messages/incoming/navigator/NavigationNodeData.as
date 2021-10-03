package com.sulake.habbo.communication.messages.incoming.navigator
{
   public class NavigationNodeData
   {
       
      
      private var var_1201:int;
      
      private var var_1392:String;
      
      public function NavigationNodeData(param1:int, param2:String)
      {
         super();
         var_1201 = param1;
         var_1392 = param2;
         Logger.log("READ NODE: " + var_1201 + ", " + var_1392);
      }
      
      public function get nodeName() : String
      {
         return var_1392;
      }
      
      public function get nodeId() : int
      {
         return var_1201;
      }
   }
}
