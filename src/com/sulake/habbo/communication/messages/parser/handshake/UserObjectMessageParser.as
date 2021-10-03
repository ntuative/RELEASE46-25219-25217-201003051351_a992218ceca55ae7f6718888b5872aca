package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var var_532:String;
      
      private var var_2303:String;
      
      private var var_2306:int;
      
      private var var_2307:int;
      
      private var var_1181:String;
      
      private var var_1230:String;
      
      private var _name:String;
      
      private var var_499:int;
      
      private var var_858:int;
      
      private var var_2305:int;
      
      private var var_1933:int;
      
      private var var_2304:String;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function get directMail() : int
      {
         return this.var_2307;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get realName() : String
      {
         return this.var_1230;
      }
      
      public function get customData() : String
      {
         return this.var_2303;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_499;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2306;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2304;
      }
      
      public function get figure() : String
      {
         return this.var_532;
      }
      
      public function get respectTotal() : int
      {
         return this.var_1933;
      }
      
      public function get sex() : String
      {
         return this.var_1181;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_532 = param1.readString();
         this.var_1181 = param1.readString();
         this.var_2303 = param1.readString();
         this.var_1230 = param1.readString();
         this.var_2305 = param1.readInteger();
         this.var_2304 = param1.readString();
         this.var_2306 = param1.readInteger();
         this.var_2307 = param1.readInteger();
         this.var_1933 = param1.readInteger();
         this.var_858 = param1.readInteger();
         this.var_499 = param1.readInteger();
         return true;
      }
      
      public function get tickets() : int
      {
         return this.var_2305;
      }
      
      public function get respectLeft() : int
      {
         return this.var_858;
      }
   }
}
