package com.sulake.habbo.widget.infostand
{
   import com.sulake.habbo.widget.events.RoomWidgetPetInfoUpdateEvent;
   import flash.display.BitmapData;
   
   public class InfoStandPetData
   {
       
      
      private var var_1658:int;
      
      private var var_1717:int;
      
      private var var_1721:int;
      
      private var _type:int;
      
      private var var_1254:int = -1;
      
      private var var_1724:int;
      
      private var _nutrition:int;
      
      private var var_1718:int;
      
      private var _energy:int;
      
      private var var_2180:int;
      
      private var var_1719:int;
      
      private var var_1723:int;
      
      private var var_1722:int;
      
      private var _petRespect:int;
      
      private var _canOwnerBeKicked:Boolean;
      
      private var _image:BitmapData;
      
      private var _ownerName:String;
      
      private var var_1720:Boolean;
      
      private var _name:String = "";
      
      private var var_1616:int;
      
      public function InfoStandPetData()
      {
         super();
      }
      
      public function get isOwnPet() : Boolean
      {
         return var_1720;
      }
      
      public function get level() : int
      {
         return var_1658;
      }
      
      public function get energy() : int
      {
         return _energy;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get experienceMax() : int
      {
         return var_1718;
      }
      
      public function get id() : int
      {
         return var_1254;
      }
      
      public function get nutritionMax() : int
      {
         return var_1721;
      }
      
      public function get ownerId() : int
      {
         return var_1616;
      }
      
      public function setData(param1:RoomWidgetPetInfoUpdateEvent) : void
      {
         _name = param1.name;
         var_1254 = param1.id;
         _type = param1.petType;
         var_2180 = param1.petRace;
         _image = param1.image;
         var_1720 = param1.isOwnPet;
         var_1616 = param1.ownerId;
         _ownerName = param1.ownerName;
         _canOwnerBeKicked = param1.canOwnerBeKicked;
         var_1658 = param1.level;
         var_1724 = param1.levelMax;
         var_1717 = param1.experience;
         var_1718 = param1.experienceMax;
         _energy = param1.energy;
         var_1719 = param1.energyMax;
         _nutrition = param1.nutrition;
         var_1721 = param1.nutritionMax;
         _petRespect = param1.petRespect;
         var_1723 = param1.roomIndex;
         var_1722 = param1.age;
      }
      
      public function get roomIndex() : int
      {
         return var_1723;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get energyMax() : int
      {
         return var_1719;
      }
      
      public function get levelMax() : int
      {
         return var_1724;
      }
      
      public function get petRespect() : int
      {
         return _petRespect;
      }
      
      public function get race() : int
      {
         return var_2180;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get canOwnerBeKicked() : Boolean
      {
         return _canOwnerBeKicked;
      }
      
      public function get experience() : int
      {
         return var_1717;
      }
      
      public function get age() : int
      {
         return var_1722;
      }
   }
}
