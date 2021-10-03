package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.navigator.NavigatorSettingsMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_1397:int = 10;
       
      
      private var var_1419:NavigatorSettingsMessageParser;
      
      private var var_1169:int;
      
      private var var_1765:int;
      
      private var var_1763:Boolean;
      
      private var var_971:Array;
      
      private var var_786:Dictionary;
      
      private var var_972:Array;
      
      private var var_2284:int;
      
      private var var_1764:int;
      
      private var var_1768:int;
      
      private var var_1766:int;
      
      private var var_546:PublicRoomShortData;
      
      private var var_376:RoomEventData;
      
      private var var_126:MsgWithRequestId;
      
      private var var_1762:Boolean;
      
      private var _navigator:HabboNavigator;
      
      private var var_1767:Boolean;
      
      private var var_189:GuestRoomData;
      
      private var var_642:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         var_971 = new Array();
         var_972 = new Array();
         var_786 = new Dictionary();
         super();
         _navigator = param1;
      }
      
      public function get createdFlatId() : int
      {
         return var_1765;
      }
      
      public function get eventMod() : Boolean
      {
         return var_1767;
      }
      
      public function startLoading() : void
      {
         this.var_642 = true;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return false;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         var_1767 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(var_376 != null)
         {
            var_376.dispose();
         }
         var_376 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return var_126 != null && var_126 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return var_126 != null && var_126 as GuestRoomSearchResultData != null;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return var_126 as GuestRoomSearchResultData;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return var_189;
      }
      
      public function get allCategories() : Array
      {
         return var_971;
      }
      
      public function onRoomExit() : void
      {
         if(var_376 != null)
         {
            var_376.dispose();
            var_376 = null;
         }
         if(var_546 != null)
         {
            var_546.dispose();
            var_546 = null;
         }
         if(var_189 != null)
         {
            var_189.dispose();
            var_189 = null;
         }
         _currentRoomOwner = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         disposeCurrentMsg();
         var_126 = param1;
         var_642 = false;
      }
      
      public function get settings() : NavigatorSettingsMessageParser
      {
         return var_1419;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         disposeCurrentMsg();
         var_126 = param1;
         var_642 = false;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         var_546 = null;
         var_189 = null;
         _currentRoomOwner = false;
         if(param1.guestRoom)
         {
            _currentRoomOwner = param1.owner;
         }
         else
         {
            var_546 = param1.publicSpace;
            var_376 = null;
         }
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return _currentRoomOwner;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2284 = param1.limit;
         this.var_1169 = param1.favouriteRoomIds.length;
         this.var_786 = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this.var_786[_loc2_] = "yes";
         }
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return var_126 as PopularRoomTagsData;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return var_546;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return var_1763;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         disposeCurrentMsg();
         var_126 = param1;
         var_642 = false;
      }
      
      public function set avatarId(param1:int) : void
      {
         var_1768 = param1;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return var_189 != null && _currentRoomOwner;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_642;
      }
      
      public function get visibleCategories() : Array
      {
         return var_972;
      }
      
      public function set categories(param1:Array) : void
      {
         var _loc2_:* = null;
         var_971 = param1;
         var_972 = new Array();
         for each(_loc2_ in var_971)
         {
            if(_loc2_.visible)
            {
               var_972.push(_loc2_);
            }
         }
      }
      
      public function get currentRoomRating() : int
      {
         return var_1764;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return var_1766;
      }
      
      public function set settings(param1:NavigatorSettingsMessageParser) : void
      {
         var_1419 = param1;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(var_126 == null)
         {
            return;
         }
         var_126.dispose();
         var_126 = null;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return var_376;
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         var_786[param1] = !!param2 ? "yes" : null;
         var_1169 += !!param2 ? 1 : -1;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return var_126 as OfficialRoomsData;
      }
      
      public function get avatarId() : int
      {
         return var_1768;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = 0;
         return false;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return var_126 != null && var_126 as OfficialRoomsData != null;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         var_1763 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         var_1764 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         var_1762 = param1;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(var_189 != null)
         {
            var_189.dispose();
         }
         var_189 = param1;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(var_189 == null)
         {
            return false;
         }
         var _loc1_:int = 0;
         return this.var_1419.homeRoomId == _loc1_;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return var_1169 >= var_2284;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         var_1766 = param1;
      }
      
      public function get hcMember() : Boolean
      {
         return var_1762;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return var_189 != null && !_currentRoomOwner;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         var_1765 = param1;
      }
   }
}
