package com.sulake.habbo.widget.poll
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.habbo.window.utils.IAlertDialog;
   import flash.events.Event;
   
   public class PollSession implements IDisposable
   {
       
      
      private var var_916:PollWidget;
      
      private var _disposed:Boolean = false;
      
      private var var_1054:int = 0;
      
      private var var_159:IPollDialog;
      
      private var var_1297:String = "";
      
      private var var_1055:Array;
      
      private var _id:int = -1;
      
      public function PollSession(param1:int, param2:PollWidget)
      {
         super();
         _id = param1;
         var_916 = param2;
      }
      
      public function hideOffer() : void
      {
         if(var_159 is PollOfferDialog)
         {
            if(true)
            {
               var_159.dispose();
            }
            var_159 = null;
         }
      }
      
      public function set numQuestions(param1:int) : void
      {
         var_1054 = param1;
      }
      
      public function get questionArray() : Array
      {
         return var_1055;
      }
      
      public function hideContent() : void
      {
         if(var_159 is PollContentDialog)
         {
            if(true)
            {
               var_159.dispose();
            }
            var_159 = null;
         }
      }
      
      public function showOffer(param1:String) : void
      {
         hideOffer();
         var_159 = new PollOfferDialog(_id,param1,var_916);
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function set questionArray(param1:Array) : void
      {
         var_1055 = param1;
      }
      
      public function get numQuestions() : int
      {
         return var_1054;
      }
      
      public function showThanks() : void
      {
         var_916.windowManager.alert("${poll_thanks_title}",var_1297,0,function(param1:IAlertDialog, param2:Event):void
         {
            param1.dispose();
         });
      }
      
      public function dispose() : void
      {
         if(!_disposed)
         {
            if(var_159)
            {
               var_159.dispose();
               var_159 = null;
            }
            var_916 = null;
            _disposed = true;
         }
      }
      
      public function showContent(param1:String, param2:String, param3:Array) : void
      {
         hideOffer();
         hideContent();
         var_1297 = param2;
         var_159 = new PollContentDialog(_id,param1,param3,var_916);
      }
   }
}
