package com.sulake.core.assets
{
   import com.sulake.core.assets.loaders.IAssetLoader;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.events.EventDispatcher;
   
   public class AssetLoaderStruct extends EventDispatcher implements IDisposable
   {
       
      
      private var var_655:IAssetLoader;
      
      private var var_1186:String;
      
      public function AssetLoaderStruct(param1:String, param2:IAssetLoader)
      {
         super();
         var_1186 = param1;
         var_655 = param2;
      }
      
      public function get assetLoader() : IAssetLoader
      {
         return var_655;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(var_655 != null)
            {
               if(true)
               {
                  var_655.dispose();
                  var_655 = null;
               }
            }
            super.dispose();
         }
      }
      
      public function get assetName() : String
      {
         return var_1186;
      }
   }
}
