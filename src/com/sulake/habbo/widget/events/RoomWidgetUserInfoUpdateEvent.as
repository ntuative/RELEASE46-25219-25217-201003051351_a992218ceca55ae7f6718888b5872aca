package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_194:String = "RWUIUE_PEER";
      
      public static const const_210:String = "RWUIUE_OWN_USER";
      
      public static const TRADE_REASON_NO_OWN_RIGHT:int = 1;
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_1212:String = "BOT";
      
      public static const const_957:int = 2;
      
      public static const const_1359:int = 0;
      
      public static const const_941:int = 3;
       
      
      private var var_1233:String = "";
      
      private var var_2015:Boolean = false;
      
      private var var_1940:int = 0;
      
      private var var_1685:int = 0;
      
      private var var_2012:Boolean = false;
      
      private var var_1230:String = "";
      
      private var var_2020:Boolean = false;
      
      private var var_858:int = 0;
      
      private var var_2019:Boolean = true;
      
      private var var_1086:int = 0;
      
      private var var_2017:Boolean = false;
      
      private var var_1243:Boolean = false;
      
      private var var_2016:Boolean = false;
      
      private var var_1684:int = 0;
      
      private var var_2014:Boolean = false;
      
      private var _image:BitmapData = null;
      
      private var var_272:Array;
      
      private var var_1242:Boolean = false;
      
      private var _name:String = "";
      
      private var var_1937:int = 0;
      
      private var var_2018:Boolean = false;
      
      private var var_2013:int = 0;
      
      private var var_1683:String = "";
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var_272 = [];
         super(param1,param2,param3);
      }
      
      public function get userRoomId() : int
      {
         return var_1685;
      }
      
      public function set userRoomId(param1:int) : void
      {
         var_1685 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return var_2015;
      }
      
      public function get canBeKicked() : Boolean
      {
         return var_2019;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         var_2019 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         var_2020 = param1;
      }
      
      public function get motto() : String
      {
         return var_1233;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         var_2017 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return var_1243;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set motto(param1:String) : void
      {
         var_1233 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return var_2018;
      }
      
      public function get groupBadgeId() : String
      {
         return var_1683;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         var_1243 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return var_2014;
      }
      
      public function set carryItem(param1:int) : void
      {
         var_1684 = param1;
      }
      
      public function get badges() : Array
      {
         return var_272;
      }
      
      public function get amIController() : Boolean
      {
         return var_2012;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         var_2012 = param1;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         var_2018 = param1;
      }
      
      public function set image(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         var_2013 = param1;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         var_1683 = param1;
      }
      
      public function set realName(param1:String) : void
      {
         var_1230 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return var_2020;
      }
      
      public function get isIgnored() : Boolean
      {
         return var_2017;
      }
      
      public function get carryItem() : int
      {
         return var_1684;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return var_1242;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         var_1242 = param1;
      }
      
      public function set respectLeft(param1:int) : void
      {
         var_858 = param1;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get canTradeReason() : int
      {
         return var_2013;
      }
      
      public function get realName() : String
      {
         return var_1230;
      }
      
      public function set webID(param1:int) : void
      {
         var_1937 = param1;
      }
      
      public function set badges(param1:Array) : void
      {
         var_272 = param1;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         var_2016 = param1;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         var_2014 = param1;
      }
      
      public function get respectLeft() : int
      {
         return var_858;
      }
      
      public function get webID() : int
      {
         return var_1937;
      }
      
      public function set groupId(param1:int) : void
      {
         var_1086 = param1;
      }
      
      public function get xp() : int
      {
         return var_1940;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         var_2015 = param1;
      }
      
      public function get groupId() : int
      {
         return var_1086;
      }
      
      public function get canTrade() : Boolean
      {
         return var_2016;
      }
      
      public function set xp(param1:int) : void
      {
         var_1940 = param1;
      }
   }
}
