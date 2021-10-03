package com.sulake.habbo.moderation
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.IDropMenuWindow;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.moderation.INamed;
   import com.sulake.habbo.communication.messages.incoming.moderation.OffenceCategoryData;
   import com.sulake.habbo.communication.messages.incoming.moderation.OffenceData;
   import com.sulake.habbo.communication.messages.outgoing.moderator.ModAlertMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.moderator.ModBanMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.moderator.ModKickMessageComposer;
   import com.sulake.habbo.window.utils.IAlertDialog;
   import flash.events.Event;
   
   public class ModActionCtrl implements IDisposable, TrackedWindow
   {
      
      private static var var_142:Array;
       
      
      private var _disposed:Boolean;
      
      private var var_908:IButtonWindow;
      
      private var var_1347:int;
      
      private var var_49:ModerationManager;
      
      private var var_734:OffenceCategoryData;
      
      private var var_430:ITextFieldWindow;
      
      private var var_909:IButtonWindow;
      
      private var var_1346:String;
      
      private var var_291:Boolean = true;
      
      private var var_1394:String;
      
      private var var_910:IDropMenuWindow;
      
      private var var_51:IFrameWindow;
      
      private var var_733:OffenceData;
      
      public function ModActionCtrl(param1:ModerationManager, param2:int, param3:String, param4:String)
      {
         super();
         var_49 = param1;
         var_1347 = param2;
         var_1394 = param3;
         var_1346 = param4;
         if(var_142 == null)
         {
            var_142 = new Array();
            var_142.push(new BanDefinition("2 hours",2));
            var_142.push(new BanDefinition("4 hours",4));
            var_142.push(new BanDefinition("12 hours",12));
            var_142.push(new BanDefinition("24 hours",24));
            var_142.push(new BanDefinition("2 days",48));
            var_142.push(new BanDefinition("3 days",72));
            var_142.push(new BanDefinition("1 week",168));
            var_142.push(new BanDefinition("2 weeks",336));
            var_142.push(new BanDefinition("3 weeks",504));
            var_142.push(new BanDefinition("1 month",720));
            var_142.push(new BanDefinition("2 months",1440));
            var_142.push(new BanDefinition("1 year",8760));
            var_142.push(new BanDefinition("2 years",17520));
            var_142.push(new BanDefinition("Permanent",100000));
         }
         var_908 = IButtonWindow(var_49.getXmlWindow("modact_offence"));
         var_909 = IButtonWindow(var_49.getXmlWindow("modact_offencectg"));
      }
      
      public static function hideChildren(param1:IWindowContainer) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < param1.numChildren)
         {
            param1.getChildAt(_loc2_).visible = false;
            _loc2_++;
         }
      }
      
      private function onBanButton(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("Ban...");
         if(!isMsgGiven())
         {
            return;
         }
         if(this.var_910.selection < 0)
         {
            var_49.windowManager.alert("Alert","You must select ban lenght",0,onAlertClose);
            return;
         }
         var_49.connection.send(new ModBanMessageComposer(var_1347,var_430.text,getBanLength(),var_1346));
         this.dispose();
      }
      
      public function getId() : String
      {
         return var_1394;
      }
      
      private function onInputClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_199)
         {
            return;
         }
         if(!var_291)
         {
            return;
         }
         var_430.text = "";
         var_291 = false;
      }
      
      private function getBanLength() : int
      {
         var _loc1_:int = this.var_910.selection;
         var _loc2_:BanDefinition = var_142[_loc1_];
         return _loc2_.banLengthHours;
      }
      
      private function prepareBanSelect(param1:IDropMenuWindow) : void
      {
         var _loc3_:* = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in var_142)
         {
            _loc2_.push(_loc3_.name);
         }
         param1.populate(_loc2_);
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      private function refreshButtons(param1:String, param2:int, param3:Array, param4:IWindow, param5:Function) : void
      {
         var _loc11_:* = null;
         var _loc12_:* = null;
         var _loc13_:* = null;
         var _loc6_:IWindowContainer = IWindowContainer(var_51.findChildByName(param1));
         hideChildren(_loc6_);
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         for each(_loc11_ in param3)
         {
            _loc12_ = "" + _loc7_;
            _loc13_ = IButtonWindow(_loc6_.findChildByName(_loc12_));
            if(_loc13_ == null)
            {
               _loc13_ = IButtonWindow(param4.clone());
               _loc13_.procedure = param5;
               _loc13_.x = _loc9_ * (param4.width + 5);
               _loc13_.y = _loc8_ * (param4.height + 5);
               _loc13_.name = _loc12_;
               _loc6_.addChild(_loc13_);
            }
            _loc13_.caption = _loc11_.name;
            _loc13_.visible = true;
            _loc7_++;
            _loc9_++;
            if(_loc9_ >= param2)
            {
               _loc9_ = 0;
               _loc8_++;
            }
         }
         _loc6_.height = RoomToolCtrl.getLowestPoint(_loc6_);
         _loc6_.visible = true;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(var_51 != null)
         {
            var_51.destroy();
            var_51 = null;
         }
         if(var_908 != null)
         {
            var_908.destroy();
            var_908 = null;
         }
         if(var_909 != null)
         {
            var_909.destroy();
            var_909 = null;
         }
         var_910 = null;
         var_430 = null;
         var_49 = null;
      }
      
      private function onSendCautionButton(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("Sending caution...");
         if(!isMsgGiven())
         {
            return;
         }
         var_49.connection.send(new ModAlertMessageComposer(var_1347,var_430.text,var_1346));
         this.dispose();
      }
      
      private function onAlertClose(param1:IAlertDialog, param2:Event) : void
      {
         param1.dispose();
      }
      
      public function getType() : int
      {
         return WindowTracker.const_1250;
      }
      
      private function onChangeCategorizationButton(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(var_733 != null)
         {
            var_733 = null;
         }
         else
         {
            var_734 = null;
         }
         this.refreshCategorization();
      }
      
      private function onOffenceCtgButton(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:int = int(param2.name);
         var_734 = var_49.initMsg.offenceCategories[_loc3_];
         this.refreshCategorization();
      }
      
      public function getFrame() : IFrameWindow
      {
         return var_51;
      }
      
      private function isMsgGiven() : Boolean
      {
         if(var_291 || false)
         {
            var_49.windowManager.alert("Alert","You must input a message to the user",0,onAlertClose);
            return false;
         }
         return true;
      }
      
      private function onKickButton(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("Kick...");
         if(!isMsgGiven())
         {
            return;
         }
         var_49.connection.send(new ModKickMessageComposer(var_1347,var_430.text,var_1346));
         this.dispose();
      }
      
      private function onClose(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         dispose();
      }
      
      public function refreshCategorization() : void
      {
         var _loc1_:IWindowContainer = IWindowContainer(var_51.findChildByName("categorization_cont"));
         hideChildren(_loc1_);
         _loc1_.findChildByName("categorization_caption_txt").visible = true;
         _loc1_.findChildByName("change_categorization_but").visible = var_734 != null;
         if(this.var_733 != null)
         {
            var_51.findChildByName("offence_txt").caption = this.var_733.name;
            var_51.findChildByName("offence_category").visible = true;
         }
         else if(this.var_734 != null)
         {
            this.refreshButtons("offences_cont",2,var_734.offences,var_908,onOffenceButton);
         }
         else
         {
            this.refreshButtons("offence_categories_cont",3,var_49.initMsg.offenceCategories,var_909,onOffenceCtgButton);
            _loc1_.height = RoomToolCtrl.getLowestPoint(_loc1_);
         }
      }
      
      private function onOffenceButton(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:int = int(param2.name);
         var_733 = var_734.offences[_loc3_];
         var_430.text = var_733.msg;
         var_291 = false;
         this.refreshCategorization();
      }
      
      public function show() : void
      {
         var_51 = IFrameWindow(var_49.getXmlWindow("modact_summary"));
         var_51.caption = "Mod action on: " + var_1394;
         var_51.findChildByName("send_caution_but").procedure = onSendCautionButton;
         var_51.findChildByName("kick_but").procedure = onKickButton;
         var_51.findChildByName("ban_but").procedure = onBanButton;
         var_51.findChildByName("change_categorization_but").procedure = onChangeCategorizationButton;
         var_49.disableButton(var_49.initMsg.alertPermission,var_51,"send_caution_but");
         var_49.disableButton(var_49.initMsg.kickPermission,var_51,"kick_but");
         var_49.disableButton(var_49.initMsg.banPermission,var_51,"ban_but");
         var_430 = ITextFieldWindow(var_51.findChildByName("message_input"));
         var_430.procedure = onInputClick;
         var_910 = IDropMenuWindow(var_51.findChildByName("banLengthSelect"));
         prepareBanSelect(var_910);
         var _loc1_:IWindow = var_51.findChildByTag("close");
         _loc1_.procedure = onClose;
         refreshCategorization();
         var_51.visible = true;
      }
   }
}
