package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1354:IID;
      
      private var _isDisposed:Boolean;
      
      private var var_914:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         var_1354 = param1;
         var_914 = new Array();
         _isDisposed = false;
      }
      
      public function get receivers() : Array
      {
         return var_914;
      }
      
      public function get identifier() : IID
      {
         return var_1354;
      }
      
      public function get disposed() : Boolean
      {
         return _isDisposed;
      }
      
      public function dispose() : void
      {
         if(!_isDisposed)
         {
            _isDisposed = true;
            var_1354 = null;
            while(false)
            {
               var_914.pop();
            }
            var_914 = null;
         }
      }
   }
}
