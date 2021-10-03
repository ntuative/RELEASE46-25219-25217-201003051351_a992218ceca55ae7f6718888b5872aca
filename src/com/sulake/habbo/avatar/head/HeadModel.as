package com.sulake.habbo.avatar.head
{
   import com.sulake.core.utils.Map;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.habbo.avatar.HabboAvatarEditor;
   import com.sulake.habbo.avatar.common.AvatarEditorGridPartItem;
   import com.sulake.habbo.avatar.common.CategoryBaseModel;
   import com.sulake.habbo.avatar.common.CategoryData;
   import com.sulake.habbo.avatar.common.IAvatarEditorCategoryModel;
   import com.sulake.habbo.avatar.figuredata.FigureData;
   
   public class HeadModel extends CategoryBaseModel implements IAvatarEditorCategoryModel
   {
       
      
      private var _view:HeadView;
      
      private var var_808:Boolean = false;
      
      private var var_1022:String;
      
      public function HeadModel(param1:HabboAvatarEditor, param2:String = "")
      {
         super(param1);
         var_1022 = param2;
      }
      
      public function getWindowContainer() : IWindowContainer
      {
         if(!var_808)
         {
            init();
         }
         return _view.getWindowContainer();
      }
      
      public function toggleItemSelection(param1:String, param2:int) : void
      {
         var _loc3_:CategoryData = var_13[param1];
         if(_loc3_ == null)
         {
            return;
         }
         _loc3_.selectItemIndex(param2);
         var _loc4_:AvatarEditorGridPartItem = _loc3_.getCurrentPart();
         if(!_loc4_)
         {
            return;
         }
         var _loc5_:int = _loc4_.colorLayerCount;
         _view.showColorLayerTabAmount(param1,_loc5_);
         var_10.figureData.savePartData(param1,_loc4_.id,_loc3_.getCurrentColorIds(),true);
         if(_loc5_ <= _loc3_.getColorLayerIndex())
         {
            toggleColorLayerSelection(param1,_loc5_ - 1);
            _view.selectColorLayerTab(param1,_loc5_ - 1);
         }
      }
      
      public function toggleColorLayerSelection(param1:String, param2:int) : void
      {
         var _loc3_:CategoryData = var_13[param1];
         if(_loc3_ == null)
         {
            return;
         }
         _loc3_.selectColorLayerIndex(param2);
      }
      
      public function closingEditorView() : void
      {
         reset();
      }
      
      private function init() : void
      {
         var_13 = new Map();
         _view = new HeadView(this,controller.windowManager,controller.assets);
         updateView();
         var_808 = true;
      }
      
      public function categorySwitch(param1:String) : void
      {
         switch(param1)
         {
            case FigureData.const_123:
            case FigureData.const_135:
            case FigureData.const_142:
            case FigureData.const_139:
            case FigureData.const_134:
               initCategory(param1);
               break;
            default:
               Logger.log("Unknown category...");
         }
      }
      
      public function toggleColorSelection(param1:String, param2:int) : void
      {
         var _loc3_:CategoryData = var_13[param1];
         if(_loc3_ == null)
         {
            return;
         }
         _loc3_.selectColorIndex(param2);
         var_10.figureData.savePartSetColourId(param1,_loc3_.getCurrentColorIds(),true);
      }
      
      override public function reset() : void
      {
         super.reset();
         if(_view != null)
         {
            _view.dispose();
            _view = null;
         }
         var_808 = false;
      }
      
      public function get controller() : HabboAvatarEditor
      {
         return var_10;
      }
      
      public function getCategoryContent(param1:String) : CategoryData
      {
         return var_13[param1];
      }
      
      override public function dispose() : void
      {
         super.dispose();
         reset();
         if(_view != null)
         {
            _view.dispose();
         }
      }
      
      private function initCategory(param1:String) : void
      {
         var _loc2_:CategoryData = var_13[param1];
         if(_loc2_ == null)
         {
            var_13[param1] = var_10.generateDataContent(this,param1);
            updateCategoryData(param1);
         }
      }
      
      public function updateView() : void
      {
         updateCategoryData(FigureData.const_123);
         updateCategoryData(FigureData.const_135);
         updateCategoryData(FigureData.const_142);
         updateCategoryData(FigureData.const_139);
         updateCategoryData(FigureData.const_134);
      }
      
      private function updateCategoryData(param1:String) : void
      {
         var _loc2_:int = var_10.figureData.getPartSetId(param1);
         var _loc3_:Array = var_10.figureData.getColourIds(param1);
         var _loc4_:CategoryData = var_13[param1];
         if(_loc4_ == null)
         {
            return;
         }
         _loc4_.selectItemId(_loc2_);
         _loc4_.selectColorIds(_loc3_);
      }
   }
}
