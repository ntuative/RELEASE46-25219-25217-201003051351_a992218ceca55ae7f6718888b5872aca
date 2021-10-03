package com.sulake.habbo.communication.messages.parser.moderation
{
   import flash.utils.getTimer;
   
   public class IssueMessageData
   {
      
      public static const const_145:int = 1;
      
      public static const const_1291:int = 3;
      
      public static const const_429:int = 2;
       
      
      private var var_2152:int;
      
      private var var_1985:int;
      
      private var var_2154:int;
      
      private var var_1822:int;
      
      private var var_32:int;
      
      private var var_374:int;
      
      private var var_1314:int;
      
      private var var_1646:int;
      
      private var var_1068:int;
      
      private var _roomResources:String;
      
      private var var_2149:int;
      
      private var var_2148:int;
      
      private var var_2147:String;
      
      private var var_1645:String;
      
      private var var_2150:int = 0;
      
      private var var_1323:String;
      
      private var _message:String;
      
      private var var_1852:int;
      
      private var var_2153:String;
      
      private var var_1212:int;
      
      private var var_703:String;
      
      private var var_2151:String;
      
      private var var_1428:int;
      
      public function IssueMessageData()
      {
         super();
      }
      
      public function set reportedUserId(param1:int) : void
      {
         var_1068 = param1;
      }
      
      public function set temporalPriority(param1:int) : void
      {
         var_2150 = param1;
      }
      
      public function get reporterUserId() : int
      {
         return var_2148;
      }
      
      public function set roomName(param1:String) : void
      {
         var_703 = param1;
      }
      
      public function set chatRecordId(param1:int) : void
      {
         var_2149 = param1;
      }
      
      public function get state() : int
      {
         return var_32;
      }
      
      public function get roomResources() : String
      {
         return _roomResources;
      }
      
      public function set roomResources(param1:String) : void
      {
         _roomResources = param1;
      }
      
      public function get roomName() : String
      {
         return var_703;
      }
      
      public function get message() : String
      {
         return _message;
      }
      
      public function set worldId(param1:int) : void
      {
         var_1822 = param1;
      }
      
      public function set state(param1:int) : void
      {
         var_32 = param1;
      }
      
      public function get unitPort() : int
      {
         return var_1985;
      }
      
      public function get priority() : int
      {
         return var_2152 + var_2150;
      }
      
      public function set issueId(param1:int) : void
      {
         var_1646 = param1;
      }
      
      public function get pickerUserName() : String
      {
         return var_1645;
      }
      
      public function getOpenTime() : String
      {
         var _loc1_:int = (getTimer() - var_1428) / 1000;
         var _loc2_:int = _loc1_ % 60;
         var _loc3_:int = _loc1_ / 60;
         var _loc4_:int = _loc3_ % 60;
         var _loc5_:int = _loc3_ / 60;
         var _loc6_:String = _loc2_ < 10 ? "0" + _loc2_ : "" + _loc2_;
         var _loc7_:String = _loc4_ < 10 ? "0" + _loc4_ : "" + _loc4_;
         var _loc8_:String = _loc5_ < 10 ? "0" + _loc5_ : "" + _loc5_;
         return _loc8_ + ":" + _loc7_ + ":" + _loc6_;
      }
      
      public function get categoryId() : int
      {
         return var_1212;
      }
      
      public function set reporterUserId(param1:int) : void
      {
         var_2148 = param1;
      }
      
      public function get roomType() : int
      {
         return var_1314;
      }
      
      public function set flatType(param1:String) : void
      {
         var_2147 = param1;
      }
      
      public function get chatRecordId() : int
      {
         return var_2149;
      }
      
      public function set message(param1:String) : void
      {
         _message = param1;
      }
      
      public function get worldId() : int
      {
         return var_1822;
      }
      
      public function set flatOwnerName(param1:String) : void
      {
         var_2151 = param1;
      }
      
      public function set reportedUserName(param1:String) : void
      {
         var_1323 = param1;
      }
      
      public function get issueId() : int
      {
         return var_1646;
      }
      
      public function set priority(param1:int) : void
      {
         var_2152 = param1;
      }
      
      public function set unitPort(param1:int) : void
      {
         var_1985 = param1;
      }
      
      public function get flatType() : String
      {
         return var_2147;
      }
      
      public function set reportedCategoryId(param1:int) : void
      {
         var_2154 = param1;
      }
      
      public function set pickerUserName(param1:String) : void
      {
         var_1645 = param1;
      }
      
      public function set pickerUserId(param1:int) : void
      {
         var_1852 = param1;
      }
      
      public function get reportedUserName() : String
      {
         return var_1323;
      }
      
      public function set roomType(param1:int) : void
      {
         var_1314 = param1;
      }
      
      public function get reportedCategoryId() : int
      {
         return var_2154;
      }
      
      public function set flatId(param1:int) : void
      {
         var_374 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1212 = param1;
      }
      
      public function set timeStamp(param1:int) : void
      {
         var_1428 = param1;
      }
      
      public function get pickerUserId() : int
      {
         return var_1852;
      }
      
      public function set reporterUserName(param1:String) : void
      {
         var_2153 = param1;
      }
      
      public function get timeStamp() : int
      {
         return var_1428;
      }
      
      public function get reportedUserId() : int
      {
         return var_1068;
      }
      
      public function get flatId() : int
      {
         return var_374;
      }
      
      public function get flatOwnerName() : String
      {
         return var_2151;
      }
      
      public function get reporterUserName() : String
      {
         return var_2153;
      }
   }
}
