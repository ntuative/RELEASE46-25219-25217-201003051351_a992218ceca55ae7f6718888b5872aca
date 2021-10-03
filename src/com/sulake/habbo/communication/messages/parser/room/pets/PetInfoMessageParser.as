package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1722:int;
      
      private var var_532:String;
      
      private var var_1658:int;
      
      private var var_1934:int;
      
      private var var_1717:int;
      
      private var var_1992:int;
      
      private var _nutrition:int;
      
      private var var_1254:int;
      
      private var var_1991:int;
      
      private var var_1994:int;
      
      private var _energy:int;
      
      private var _name:String;
      
      private var _ownerName:String;
      
      private var var_1616:int;
      
      private var var_1993:int;
      
      public function PetInfoMessageParser()
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
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get maxEnergy() : int
      {
         return var_1992;
      }
      
      public function flush() : Boolean
      {
         var_1254 = -1;
         return true;
      }
      
      public function get maxLevel() : int
      {
         return var_1991;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return var_1994;
      }
      
      public function get maxNutrition() : int
      {
         return var_1993;
      }
      
      public function get figure() : String
      {
         return var_532;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get respect() : int
      {
         return var_1934;
      }
      
      public function get petId() : int
      {
         return var_1254;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         var_1254 = param1.readInteger();
         _name = param1.readString();
         var_1658 = param1.readInteger();
         var_1991 = param1.readInteger();
         var_1717 = param1.readInteger();
         var_1994 = param1.readInteger();
         _energy = param1.readInteger();
         var_1992 = param1.readInteger();
         _nutrition = param1.readInteger();
         var_1993 = param1.readInteger();
         var_532 = param1.readString();
         var_1934 = param1.readInteger();
         var_1616 = param1.readInteger();
         var_1722 = param1.readInteger();
         _ownerName = param1.readString();
         return true;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function get experience() : int
      {
         return var_1717;
      }
      
      public function get ownerId() : int
      {
         return var_1616;
      }
      
      public function get age() : int
      {
         return var_1722;
      }
   }
}
