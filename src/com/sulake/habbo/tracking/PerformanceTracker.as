package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.utils.debug.GarbageMonitor;
   import com.sulake.habbo.communication.messages.outgoing.tracking.PerformanceLogMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.external.ExternalInterface;
   import flash.system.Capabilities;
   import flash.system.System;
   import flash.utils.getTimer;
   
   public class PerformanceTracker
   {
       
      
      private var var_1566:GarbageMonitor = null;
      
      private var var_1136:int = 0;
      
      private var var_1141:Boolean = false;
      
      private var var_1704:String = "";
      
      private var var_1567:String = "";
      
      private var var_355:Number = 0;
      
      private var var_1336:int = 10;
      
      private var var_2324:Array;
      
      private var var_618:int = 0;
      
      private var var_1334:int = 60;
      
      private var var_1082:int = 0;
      
      private var var_1081:int = 0;
      
      private var var_1706:String = "";
      
      private var var_2188:Number = 0;
      
      private var var_1333:int = 1000;
      
      private var var_2187:Boolean = true;
      
      private var var_2189:Number = 0.15;
      
      private var var_172:IHabboConfigurationManager = null;
      
      private var var_1702:String = "";
      
      private var var_1335:int = 0;
      
      private var _connection:IConnection = null;
      
      public function PerformanceTracker()
      {
         var_2324 = [];
         super();
         var_1567 = Capabilities.version;
         var_1704 = Capabilities.os;
         var_1141 = Capabilities.isDebugger;
         var_1702 = !true ? ExternalInterface.call("window.navigator.userAgent.toString") : "unknown";
         var_1566 = new GarbageMonitor();
         updateGarbageMonitor();
         var_1136 = getTimer();
      }
      
      private function updateGarbageMonitor() : Object
      {
         var _loc2_:* = null;
         var _loc1_:Array = var_1566.list;
         if(_loc1_ == null || _loc1_.length == 0)
         {
            _loc2_ = new GarbageTester("tester");
            var_1566.insert(_loc2_,"tester");
            return _loc2_;
         }
         return null;
      }
      
      public function dispose() : void
      {
      }
      
      public function get averageUpdateInterval() : int
      {
         return var_355;
      }
      
      private function differenceInPercents(param1:Number, param2:Number) : Number
      {
         if(param1 == param2)
         {
            return 0;
         }
         var _loc3_:Number = param1;
         var _loc4_:Number = param2;
         if(param2 > param1)
         {
            _loc3_ = param2;
            _loc4_ = param1;
         }
         return 100 * (1 - _loc4_ / _loc3_);
      }
      
      public function set reportInterval(param1:int) : void
      {
         var_1334 = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         _connection = param1;
      }
      
      public function get flashVersion() : String
      {
         return var_1567;
      }
      
      public function update(param1:uint) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Boolean = false;
         var _loc6_:Number = NaN;
         var _loc2_:Object = updateGarbageMonitor();
         if(_loc2_ != null)
         {
            ++var_1081;
            Logger.log("Garbage collection");
         }
         var _loc3_:Boolean = false;
         if(param1 > var_1333)
         {
            ++var_1082;
            _loc3_ = true;
         }
         else
         {
            ++var_618;
            if(var_618 <= 1)
            {
               var_355 = param1;
            }
            else
            {
               _loc4_ = Number(var_618);
               var_355 = var_355 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
            }
         }
         if(getTimer() - var_1136 > var_1334 * 1000 && var_1335 < var_1336)
         {
            Logger.log("*** Performance tracker: average frame rate " + 1000 / var_355);
            _loc5_ = true;
            if(var_2187 && var_1335 > 0)
            {
               _loc6_ = differenceInPercents(var_2188,var_355);
               if(_loc6_ < var_2189)
               {
                  _loc5_ = false;
               }
            }
            var_1136 = getTimer();
            if(_loc5_ || _loc3_)
            {
               var_2188 = var_355;
               if(sendReport())
               {
                  ++var_1335;
               }
            }
         }
      }
      
      public function set reportLimit(param1:int) : void
      {
         var_1336 = param1;
      }
      
      public function set slowUpdateLimit(param1:int) : void
      {
         var_1333 = param1;
      }
      
      private function sendReport() : Boolean
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(_connection != null)
         {
            _loc1_ = null;
            _loc2_ = getTimer() / 1000;
            _loc3_ = -1;
            _loc4_ = 0;
            _loc1_ = new PerformanceLogMessageComposer(_loc2_,var_1702,var_1567,var_1704,var_1706,var_1141,_loc4_,_loc3_,var_1081,var_355,var_1082);
            _connection.send(_loc1_);
            var_1081 = 0;
            var_355 = 0;
            var_618 = 0;
            var_1082 = 0;
            return true;
         }
         return false;
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         var_172 = param1;
         var_1334 = int(var_172.getKey("performancetest.interval","60"));
         var_1333 = int(var_172.getKey("performancetest.slowupdatelimit","1000"));
         var_1336 = int(var_172.getKey("performancetest.reportlimit","10"));
         var_2189 = Number(var_172.getKey("performancetest.distribution.deviancelimit.percent","10"));
         var_2187 = Boolean(int(var_172.getKey("performancetest.distribution.enabled","1")));
      }
   }
}
