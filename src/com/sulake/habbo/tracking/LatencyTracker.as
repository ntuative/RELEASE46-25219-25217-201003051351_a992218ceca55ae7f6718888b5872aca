package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.communication.messages.incoming.tracking.LatencyPingResponseMessageEvent;
   import com.sulake.habbo.communication.messages.outgoing.tracking.LatencyPingReportMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.tracking.LatencyPingRequestMessageComposer;
   import com.sulake.habbo.communication.messages.parser.tracking.LatencyPingResponseMessageParser;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.utils.getTimer;
   
   public class LatencyTracker
   {
       
      
      private var var_158:Array;
      
      private var var_32:Boolean = false;
      
      private var var_1576:int = 0;
      
      private var var_1578:int = 0;
      
      private var _communication:IHabboCommunicationManager;
      
      private var var_513:Map;
      
      private var var_2237:int = 0;
      
      private var var_1579:int = 0;
      
      private var var_172:IHabboConfigurationManager;
      
      private var var_1355:int = 0;
      
      private var _connection:IConnection;
      
      private var var_1577:int = 0;
      
      public function LatencyTracker()
      {
         super();
      }
      
      public function update(param1:uint) : void
      {
         if(!var_32)
         {
            return;
         }
         if(getTimer() - var_1576 > var_1578)
         {
            testLatency();
         }
      }
      
      private function testLatency() : void
      {
         var_1576 = getTimer();
         var_513.add(var_1355,var_1576);
         _connection.send(new LatencyPingRequestMessageComposer(var_1355));
         ++var_1355;
      }
      
      public function set communication(param1:IHabboCommunicationManager) : void
      {
         _communication = param1;
      }
      
      public function init() : void
      {
         if(var_172 == null || _communication == null || _connection == null)
         {
            return;
         }
         var_1578 = int(var_172.getKey("latencytest.interval"));
         var_1577 = int(var_172.getKey("latencytest.report.index"));
         var_2237 = int(var_172.getKey("latencytest.report.delta"));
         _communication.addHabboConnectionMessageEvent(new LatencyPingResponseMessageEvent(onPingResponse));
         if(var_1578 < 1)
         {
            return;
         }
         var_513 = new Map();
         var_158 = new Array();
         var_32 = true;
      }
      
      private function onPingResponse(param1:IMessageEvent) : void
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:* = null;
         if(var_513 == null || var_158 == null)
         {
            return;
         }
         var _loc2_:LatencyPingResponseMessageParser = (param1 as LatencyPingResponseMessageEvent).getParser();
         var _loc3_:int = var_513.getValue(_loc2_.requestId);
         var_513.remove(_loc2_.requestId);
         var _loc4_:int = getTimer() - _loc3_;
         var_158.push(_loc4_);
         if(var_158.length == var_1577 && var_1577 > 0)
         {
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            _loc8_ = 0;
            while(_loc8_ < var_158.length)
            {
               _loc5_ += var_158[_loc8_];
               _loc8_++;
            }
            _loc9_ = _loc5_ / 0;
            _loc8_ = 0;
            while(_loc8_ < var_158.length)
            {
               if(var_158[_loc8_] < _loc9_ * 2)
               {
                  _loc6_ += var_158[_loc8_];
                  _loc7_++;
               }
               _loc8_++;
            }
            if(_loc7_ == 0)
            {
               var_158 = [];
               return;
            }
            _loc10_ = _loc6_ / _loc7_;
            if(Math.abs(_loc9_ - var_1579) > var_2237 || var_1579 == 0)
            {
               var_1579 = _loc9_;
               _loc11_ = new LatencyPingReportMessageComposer(_loc9_,_loc10_,var_158.length);
               _connection.send(_loc11_);
            }
            var_158 = [];
         }
      }
      
      public function dispose() : void
      {
         var_32 = false;
         var_172 = null;
         _communication = null;
         _connection = null;
         if(var_513 != null)
         {
            var_513.dispose();
            var_513 = null;
         }
         var_158 = null;
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         var_172 = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         _connection = param1;
      }
   }
}
