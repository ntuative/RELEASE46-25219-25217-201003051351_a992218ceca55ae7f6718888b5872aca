package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_668:int = 6;
      
      public static const const_225:int = 5;
      
      public static const const_687:int = 2;
      
      public static const const_323:int = 9;
      
      public static const const_288:int = 4;
      
      public static const const_262:int = 2;
      
      public static const const_530:int = 4;
      
      public static const const_221:int = 8;
      
      public static const const_714:int = 7;
      
      public static const const_253:int = 3;
      
      public static const const_301:int = 1;
      
      public static const const_185:int = 5;
      
      public static const const_433:int = 12;
      
      public static const const_313:int = 1;
      
      public static const const_551:int = 11;
      
      public static const const_550:int = 3;
      
      public static const const_1586:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_396:Array;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_396 = new Array();
         var_396.push(new Tab(_navigator,const_301,const_433,new EventsTabPageDecorator(_navigator),MainViewCtrl.const_396));
         var_396.push(new Tab(_navigator,const_262,const_313,new RoomsTabPageDecorator(_navigator),MainViewCtrl.const_396));
         var_396.push(new Tab(_navigator,const_288,const_551,new OfficialTabPageDecorator(_navigator),MainViewCtrl.const_895));
         var_396.push(new Tab(_navigator,const_253,const_225,new MyRoomsTabPageDecorator(_navigator),MainViewCtrl.const_396));
         var_396.push(new Tab(_navigator,const_185,const_221,new SearchTabPageDecorator(_navigator),MainViewCtrl.const_585));
         setSelectedTab(const_301);
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_396)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in var_396)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_396)
         {
            _loc1_.selected = false;
         }
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_288;
      }
      
      public function get tabs() : Array
      {
         return var_396;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         getTab(param1).selected = true;
      }
   }
}
