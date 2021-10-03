package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ObjectMessageData
   {
       
      
      private var var_1006:int = 0;
      
      private var _data:String = "";
      
      private var var_1435:int = -1;
      
      private var var_32:int = 0;
      
      private var _type:int = 0;
      
      private var var_1005:int = 0;
      
      private var var_2361:String = "";
      
      private var var_1713:int = 0;
      
      private var _id:int = 0;
      
      private var var_192:Boolean = false;
      
      private var var_238:int = 0;
      
      private var var_1922:String = null;
      
      private var var_86:Number = 0;
      
      private var _y:Number = 0;
      
      private var var_85:Number = 0;
      
      public function ObjectMessageData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function set type(param1:int) : void
      {
         if(!var_192)
         {
            _type = param1;
         }
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_192)
         {
            _y = param1;
         }
      }
      
      public function get dir() : int
      {
         return var_238;
      }
      
      public function get extra() : int
      {
         return var_1435;
      }
      
      public function get state() : int
      {
         return var_32;
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_192)
         {
            var_238 = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set x(param1:Number) : void
      {
         if(!var_192)
         {
            var_86 = param1;
         }
      }
      
      public function set extra(param1:int) : void
      {
         if(!var_192)
         {
            var_1435 = param1;
         }
      }
      
      public function get z() : Number
      {
         return var_85;
      }
      
      public function set state(param1:int) : void
      {
         if(!var_192)
         {
            var_32 = param1;
         }
      }
      
      public function get data() : String
      {
         return _data;
      }
      
      public function get expiryTime() : int
      {
         return var_1713;
      }
      
      public function get staticClass() : String
      {
         return var_1922;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function set expiryTime(param1:int) : void
      {
         if(!var_192)
         {
            var_1713 = param1;
         }
      }
      
      public function set data(param1:String) : void
      {
         if(!var_192)
         {
            _data = param1;
         }
      }
      
      public function set staticClass(param1:String) : void
      {
         if(!var_192)
         {
            var_1922 = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_192 = true;
      }
      
      public function set sizeX(param1:int) : void
      {
         if(!var_192)
         {
            var_1006 = param1;
         }
      }
      
      public function set sizeY(param1:int) : void
      {
         if(!var_192)
         {
            var_1005 = param1;
         }
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_192)
         {
            var_85 = param1;
         }
      }
      
      public function get sizeX() : int
      {
         return var_1006;
      }
      
      public function get x() : Number
      {
         return var_86;
      }
      
      public function get sizeY() : int
      {
         return var_1005;
      }
   }
}
