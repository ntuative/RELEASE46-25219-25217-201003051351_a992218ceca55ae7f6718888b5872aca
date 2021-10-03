package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_427:uint;
      
      private var var_1072:IUnknown;
      
      private var var_1329:String;
      
      private var var_1071:IID;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         var_1071 = param1;
         var_1329 = getQualifiedClassName(var_1071);
         var_1072 = param2;
         var_427 = 0;
      }
      
      public function get iid() : IID
      {
         return var_1071;
      }
      
      public function get disposed() : Boolean
      {
         return var_1072 == null;
      }
      
      public function get references() : uint
      {
         return var_427;
      }
      
      public function release() : uint
      {
         return references > 0 ? uint(--var_427) : uint(0);
      }
      
      public function get unknown() : IUnknown
      {
         return var_1072;
      }
      
      public function get iis() : String
      {
         return var_1329;
      }
      
      public function reserve() : uint
      {
         return ++var_427;
      }
      
      public function dispose() : void
      {
         var_1071 = null;
         var_1329 = null;
         var_1072 = null;
         var_427 = 0;
      }
   }
}
