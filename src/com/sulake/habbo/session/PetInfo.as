package com.sulake.habbo.session
{
   public class PetInfo implements IPetInfo
   {
       
      
      private var var_1658:int;
      
      private var var_1934:int;
      
      private var var_1717:int;
      
      private var var_1721:int;
      
      private var _nutrition:int;
      
      private var var_1254:int;
      
      private var var_1724:int;
      
      private var var_1718:int;
      
      private var _energy:int;
      
      private var var_1722:int;
      
      private var var_1719:int;
      
      private var _ownerName:String;
      
      private var var_1616:int;
      
      public function PetInfo()
      {
         super();
      }
      
      public function get level() : int
      {
         return var_1658;
      }
      
      public function get energy() : int
      {
         return _energy;
      }
      
      public function set respect(param1:int) : void
      {
         var_1934 = param1;
      }
      
      public function set energy(param1:int) : void
      {
         _energy = param1;
      }
      
      public function set level(param1:int) : void
      {
         var_1658 = param1;
      }
      
      public function get petId() : int
      {
         return var_1254;
      }
      
      public function get experienceMax() : int
      {
         return var_1718;
      }
      
      public function get nutritionMax() : int
      {
         return var_1721;
      }
      
      public function set levelMax(param1:int) : void
      {
         var_1724 = param1;
      }
      
      public function get ownerId() : int
      {
         return var_1616;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function set petId(param1:int) : void
      {
         var_1254 = param1;
      }
      
      public function set nutrition(param1:int) : void
      {
         _nutrition = param1;
      }
      
      public function get energyMax() : int
      {
         return var_1719;
      }
      
      public function get respect() : int
      {
         return var_1934;
      }
      
      public function get levelMax() : int
      {
         return var_1724;
      }
      
      public function set ownerName(param1:String) : void
      {
         _ownerName = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         var_1718 = param1;
      }
      
      public function set experience(param1:int) : void
      {
         var_1717 = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         var_1721 = param1;
      }
      
      public function set ownerId(param1:int) : void
      {
         var_1616 = param1;
      }
      
      public function get experience() : int
      {
         return var_1717;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function set energyMax(param1:int) : void
      {
         var_1719 = param1;
      }
      
      public function set age(param1:int) : void
      {
         var_1722 = param1;
      }
      
      public function get age() : int
      {
         return var_1722;
      }
   }
}
