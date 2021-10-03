package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ItemMessageData
   {
       
      
      private var var_85:Number = 0;
      
      private var _data:String = "";
      
      private var var_1435:int = 0;
      
      private var var_32:int = 0;
      
      private var _type:int = 0;
      
      private var _y:Number = 0;
      
      private var var_2142:Boolean = false;
      
      private var var_2361:String = "";
      
      private var _id:int = 0;
      
      private var var_192:Boolean = false;
      
      private var var_238:String = "";
      
      private var var_2140:int = 0;
      
      private var var_2141:int = 0;
      
      private var var_1621:int = 0;
      
      private var var_1629:int = 0;
      
      public function ItemMessageData(param1:int, param2:int, param3:Boolean)
      {
         super();
         _id = param1;
         _type = param2;
         var_2142 = param3;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_192)
         {
            _y = param1;
         }
      }
      
      public function get isOldFormat() : Boolean
      {
         return var_2142;
      }
      
      public function set type(param1:int) : void
      {
         if(!var_192)
         {
            _type = param1;
         }
      }
      
      public function get dir() : String
      {
         return var_238;
      }
      
      public function get state() : int
      {
         return var_32;
      }
      
      public function set localX(param1:Number) : void
      {
         if(!var_192)
         {
            var_1621 = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set wallX(param1:Number) : void
      {
         if(!var_192)
         {
            var_2140 = param1;
         }
      }
      
      public function set wallY(param1:Number) : void
      {
         if(!var_192)
         {
            var_2141 = param1;
         }
      }
      
      public function set dir(param1:String) : void
      {
         if(!var_192)
         {
            var_238 = param1;
         }
      }
      
      public function get data() : String
      {
         return _data;
      }
      
      public function set localY(param1:Number) : void
      {
         if(!var_192)
         {
            var_1629 = param1;
         }
      }
      
      public function set state(param1:int) : void
      {
         if(!var_192)
         {
            var_32 = param1;
         }
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get localX() : Number
      {
         return var_1621;
      }
      
      public function set data(param1:String) : void
      {
         if(!var_192)
         {
            _data = param1;
         }
      }
      
      public function get wallX() : Number
      {
         return var_2140;
      }
      
      public function get wallY() : Number
      {
         return var_2141;
      }
      
      public function get localY() : Number
      {
         return var_1629;
      }
      
      public function setReadOnly() : void
      {
         var_192 = true;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get z() : Number
      {
         return var_85;
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_192)
         {
            var_85 = param1;
         }
      }
   }
}
