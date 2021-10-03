package com.sulake.habbo.room.utils
{
   public class RoomInstanceData
   {
       
      
      private var var_838:LegacyWallGeometry = null;
      
      private var var_567:SelectedRoomObjectData = null;
      
      private var _roomCategory:int = 0;
      
      private var var_568:TileHeightMap = null;
      
      private var var_1968:String = null;
      
      private var _roomId:int = 0;
      
      private var var_839:RoomCamera = null;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         super();
         _roomId = param1;
         _roomCategory = param2;
         var_838 = new LegacyWallGeometry();
         var_839 = new RoomCamera();
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(var_568 != null)
         {
            var_568.dispose();
         }
         var_568 = param1;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function set worldType(param1:String) : void
      {
         var_1968 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return var_838;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return var_839;
      }
      
      public function dispose() : void
      {
         if(var_568 != null)
         {
            var_568.dispose();
            var_568 = null;
         }
         if(var_838 != null)
         {
            var_838.dispose();
            var_838 = null;
         }
         if(var_839 != null)
         {
            var_839.dispose();
            var_839 = null;
         }
         if(var_567 != null)
         {
            var_567.dispose();
            var_567 = null;
         }
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return var_568;
      }
      
      public function get worldType() : String
      {
         return var_1968;
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(var_567 != null)
         {
            var_567.dispose();
         }
         var_567 = param1;
      }
      
      public function get roomCategory() : int
      {
         return _roomCategory;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return var_567;
      }
   }
}
