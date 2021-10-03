package com.sulake.habbo.room.utils
{
   import com.sulake.habbo.room.ISelectedRoomObjectData;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class SelectedRoomObjectData implements ISelectedRoomObjectData
   {
       
      
      private var var_74:Vector3d = null;
      
      private var _id:int = 0;
      
      private var var_238:Vector3d = null;
      
      private var var_1780:int = 0;
      
      private var var_1907:String = null;
      
      private var _category:int = 0;
      
      private var var_1908:String = "";
      
      public function SelectedRoomObjectData(param1:int, param2:int, param3:String, param4:IVector3d, param5:IVector3d, param6:int = 0, param7:String = null)
      {
         super();
         _id = param1;
         _category = param2;
         var_1908 = param3;
         var_74 = new Vector3d();
         var_74.assign(param4);
         var_238 = new Vector3d();
         var_238.assign(param5);
         var_1780 = param6;
         var_1907 = param7;
      }
      
      public function get loc() : Vector3d
      {
         return var_74;
      }
      
      public function get typeId() : int
      {
         return var_1780;
      }
      
      public function get dir() : Vector3d
      {
         return var_238;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get instanceData() : String
      {
         return var_1907;
      }
      
      public function get operation() : String
      {
         return var_1908;
      }
      
      public function dispose() : void
      {
         var_74 = null;
         var_238 = null;
      }
      
      public function get category() : int
      {
         return _category;
      }
   }
}
