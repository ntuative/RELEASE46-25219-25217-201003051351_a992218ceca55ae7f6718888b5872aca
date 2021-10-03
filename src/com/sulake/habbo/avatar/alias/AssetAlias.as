package com.sulake.habbo.avatar.alias
{
   public class AssetAlias
   {
       
      
      private var var_981:Boolean;
      
      private var _name:String;
      
      private var var_2146:String;
      
      private var var_980:Boolean;
      
      public function AssetAlias(param1:XML)
      {
         super();
         _name = String(param1.@name);
         var_2146 = String(param1.@link);
         var_980 = Boolean(parseInt(param1.@fliph));
         var_981 = Boolean(parseInt(param1.@flipv));
      }
      
      public function get flipH() : Boolean
      {
         return var_980;
      }
      
      public function get flipV() : Boolean
      {
         return var_981;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get link() : String
      {
         return var_2146;
      }
   }
}
