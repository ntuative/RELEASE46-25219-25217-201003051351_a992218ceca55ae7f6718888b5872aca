package com.sulake.habbo.avatar.pets
{
   public class Breed extends PetEditorInfo implements IBreed
   {
       
      
      private var var_1022:String;
      
      private var _id:int;
      
      private var var_2070:String = "";
      
      private var var_2069:int;
      
      private var var_2071:String;
      
      private var var_1738:Boolean;
      
      public function Breed(param1:XML)
      {
         super(param1);
         _id = parseInt(param1.@id);
         var_2069 = parseInt(param1.@pattern);
         var_1022 = String(param1.@gender);
         var_1738 = Boolean(parseInt(param1.@colorable));
         var_2070 = String(param1.@localizationKey);
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get localizationKey() : String
      {
         return var_2070;
      }
      
      public function get isColorable() : Boolean
      {
         return var_1738;
      }
      
      public function get gender() : String
      {
         return var_1022;
      }
      
      public function get patternId() : int
      {
         return var_2069;
      }
      
      public function get avatarFigureString() : String
      {
         return var_2071;
      }
      
      public function set avatarFigureString(param1:String) : void
      {
         var_2071 = param1;
      }
   }
}
