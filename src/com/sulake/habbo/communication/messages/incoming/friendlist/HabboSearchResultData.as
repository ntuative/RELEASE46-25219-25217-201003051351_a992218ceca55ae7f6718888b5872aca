package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2278:Boolean;
      
      private var var_2280:int;
      
      private var var_2281:Boolean;
      
      private var var_1555:String;
      
      private var var_1230:String;
      
      private var var_1768:int;
      
      private var var_2175:String;
      
      private var var_2279:String;
      
      private var var_2176:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1768 = param1.readInteger();
         this.var_1555 = param1.readString();
         this.var_2175 = param1.readString();
         this.var_2278 = param1.readBoolean();
         this.var_2281 = param1.readBoolean();
         param1.readString();
         this.var_2280 = param1.readInteger();
         this.var_2176 = param1.readString();
         this.var_2279 = param1.readString();
         this.var_1230 = param1.readString();
      }
      
      public function get realName() : String
      {
         return this.var_1230;
      }
      
      public function get avatarName() : String
      {
         return this.var_1555;
      }
      
      public function get avatarId() : int
      {
         return this.var_1768;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2278;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2279;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2176;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2281;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2175;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2280;
      }
   }
}
