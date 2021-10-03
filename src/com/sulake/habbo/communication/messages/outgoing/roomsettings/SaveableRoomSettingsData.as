package com.sulake.habbo.communication.messages.outgoing.roomsettings
{
   public class SaveableRoomSettingsData
   {
       
      
      private var _password:String;
      
      private var var_1959:int;
      
      private var var_1827:int;
      
      private var var_1956:Boolean;
      
      private var var_1953:Boolean;
      
      private var var_1955:Array;
      
      private var var_1957:Boolean;
      
      private var var_1212:int;
      
      private var _name:String;
      
      private var _roomId:int;
      
      private var var_616:Array;
      
      private var var_1112:String;
      
      public function SaveableRoomSettingsData()
      {
         super();
      }
      
      public function get doorMode() : int
      {
         return var_1827;
      }
      
      public function get description() : String
      {
         return var_1112;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return var_1953;
      }
      
      public function get maximumVisitors() : int
      {
         return var_1959;
      }
      
      public function set description(param1:String) : void
      {
         var_1112 = param1;
      }
      
      public function get password() : String
      {
         return _password;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         var_1957 = param1;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         var_1959 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get categoryId() : int
      {
         return var_1212;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get controllers() : Array
      {
         return var_1955;
      }
      
      public function get tags() : Array
      {
         return var_616;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1957;
      }
      
      public function set doorMode(param1:int) : void
      {
         var_1827 = param1;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         var_1956 = param1;
      }
      
      public function set tags(param1:Array) : void
      {
         var_616 = param1;
      }
      
      public function set roomId(param1:int) : void
      {
         _roomId = param1;
      }
      
      public function set controllers(param1:Array) : void
      {
         var_1955 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1212 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return var_1956;
      }
      
      public function set password(param1:String) : void
      {
         _password = param1;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         var_1953 = param1;
      }
   }
}
