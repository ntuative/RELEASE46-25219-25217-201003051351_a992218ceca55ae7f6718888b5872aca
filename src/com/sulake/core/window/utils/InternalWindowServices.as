package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class InternalWindowServices implements IInternalWindowServices
   {
       
      
      private var var_119:DisplayObject;
      
      private var var_2322:uint;
      
      private var var_887:IWindowToolTipAgentService;
      
      private var var_885:IWindowMouseScalingService;
      
      private var var_221:IWindowContext;
      
      private var var_883:IWindowFocusManagerService;
      
      private var var_886:IWindowMouseListenerService;
      
      private var var_884:IWindowMouseDraggingService;
      
      public function InternalWindowServices(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         var_2322 = 0;
         var_119 = param2;
         var_221 = param1;
         var_884 = new WindowMouseDragger(param2);
         var_885 = new WindowMouseScaler(param2);
         var_886 = new WindowMouseListener(param2);
         var_883 = new FocusManager(param2);
         var_887 = new WindowToolTipAgent(param2);
      }
      
      public function getMouseScalingService() : IWindowMouseScalingService
      {
         return var_885;
      }
      
      public function getFocusManagerService() : IWindowFocusManagerService
      {
         return var_883;
      }
      
      public function getToolTipAgentService() : IWindowToolTipAgentService
      {
         return var_887;
      }
      
      public function dispose() : void
      {
         if(var_884 != null)
         {
            var_884.dispose();
            var_884 = null;
         }
         if(var_885 != null)
         {
            var_885.dispose();
            var_885 = null;
         }
         if(var_886 != null)
         {
            var_886.dispose();
            var_886 = null;
         }
         if(var_883 != null)
         {
            var_883.dispose();
            var_883 = null;
         }
         if(var_887 != null)
         {
            var_887.dispose();
            var_887 = null;
         }
         var_221 = null;
      }
      
      public function getMouseListenerService() : IWindowMouseListenerService
      {
         return var_886;
      }
      
      public function getMouseDraggingService() : IWindowMouseDraggingService
      {
         return var_884;
      }
   }
}
