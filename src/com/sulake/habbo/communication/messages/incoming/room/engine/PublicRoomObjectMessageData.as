package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class PublicRoomObjectMessageData
   {
       
      
      private var var_1005:int = 0;
      
      private var var_85:Number = 0;
      
      private var _y:Number = 0;
      
      private var var_192:Boolean = false;
      
      private var var_238:int = 0;
      
      private var _type:String = "";
      
      private var _name:String = "";
      
      private var var_86:Number = 0;
      
      private var var_1006:int = 0;
      
      public function PublicRoomObjectMessageData()
      {
         super();
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_192)
         {
            var_85 = param1;
         }
      }
      
      public function get sizeY() : int
      {
         return var_1005;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get dir() : int
      {
         return var_238;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set name(param1:String) : void
      {
         if(!var_192)
         {
            _name = param1;
         }
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_192)
         {
            var_238 = param1;
         }
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_192)
         {
            _y = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_192 = true;
      }
      
      public function get z() : Number
      {
         return var_85;
      }
      
      public function set sizeY(param1:int) : void
      {
         if(!var_192)
         {
            var_1005 = param1;
         }
      }
      
      public function set sizeX(param1:int) : void
      {
         if(!var_192)
         {
            var_1006 = param1;
         }
      }
      
      public function set x(param1:Number) : void
      {
         if(!var_192)
         {
            var_86 = param1;
         }
      }
      
      public function get x() : Number
      {
         return var_86;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function set type(param1:String) : void
      {
         if(!var_192)
         {
            _type = param1;
         }
      }
      
      public function get sizeX() : int
      {
         return var_1006;
      }
   }
}
