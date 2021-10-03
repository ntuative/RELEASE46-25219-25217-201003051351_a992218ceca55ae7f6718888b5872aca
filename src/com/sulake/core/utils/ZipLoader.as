package com.sulake.core.utils
{
   import deng.fzip.FZip;
   import flash.display.LoaderInfo;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   import flash.utils.getQualifiedClassName;
   
   public class ZipLoader extends LibraryLoader
   {
       
      
      private var var_392:FZip;
      
      private var var_1220:Array;
      
      private var var_1909:uint = 0;
      
      private var var_825:int = 0;
      
      private var var_2360:Array;
      
      public function ZipLoader(param1:Boolean)
      {
         super(param1);
         var_1220 = new Array();
      }
      
      private function onIOError(param1:IOErrorEvent) : void
      {
         Logger.log(param1.text);
         dispatchEvent(new LibraryLoaderEvent(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_ERROR,0));
      }
      
      public function get resources() : Array
      {
         return var_1220;
      }
      
      private function onLoaderComplete(param1:Event) : void
      {
         var _loc2_:LoaderInfo = param1.target as LoaderInfo;
         var _loc3_:String = getQualifiedClassName(var_15.content);
         var_1220.push(var_15.contentLoaderInfo.applicationDomain.getDefinition(_loc3_));
         ++var_825;
         if(var_1220.length == var_1909)
         {
            var_15.contentLoaderInfo.removeEventListener(Event.COMPLETE,onLoaderComplete);
            var_15.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,onIOError);
            dispatchEvent(new LibraryLoaderEvent(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_COMPLETE,0));
         }
         else
         {
            var_15.loadBytes(var_392.getFileAt(var_825).content);
         }
      }
      
      override public function load(param1:URLRequest, param2:LoaderContext = null, param3:int = 1) : void
      {
         var_319 = param1;
         if(var_392)
         {
            var_392.close();
         }
         var_392 = new FZip();
         var_392.addEventListener(Event.COMPLETE,onComplete);
         var_392.addEventListener(IOErrorEvent.IO_ERROR,onIOError);
         var_392.addEventListener(ProgressEvent.PROGRESS,onProgress);
         var_392.load(var_319);
      }
      
      private function onProgress(param1:ProgressEvent) : void
      {
         dispatchEvent(new LibraryLoaderEvent(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_PROGRESS,0));
      }
      
      private function onComplete(param1:Event) : void
      {
         var_825 = 0;
         var_1909 = var_392.getFileCount();
         removeEventListeners();
         var_15.contentLoaderInfo.addEventListener(Event.COMPLETE,onLoaderComplete);
         var_15.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,onIOError);
         var_15.loadBytes(var_392.getFileAt(var_825).content);
      }
   }
}
