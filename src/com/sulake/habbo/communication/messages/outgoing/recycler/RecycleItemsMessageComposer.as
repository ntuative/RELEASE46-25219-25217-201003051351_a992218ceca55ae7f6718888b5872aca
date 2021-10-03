package com.sulake.habbo.communication.messages.outgoing.recycler
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RecycleItemsMessageComposer implements IMessageComposer
   {
       
      
      private var var_765:Array;
      
      public function RecycleItemsMessageComposer(param1:Array)
      {
         super();
         var_765 = new Array();
         var_765.push(param1.length);
         var_765 = var_765.concat(param1);
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return var_765;
      }
   }
}
