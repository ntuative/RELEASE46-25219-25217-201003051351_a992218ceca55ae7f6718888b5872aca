package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1246:int = 4;
      
      public static const const_697:int = 3;
      
      public static const const_552:int = 2;
      
      public static const const_843:int = 1;
       
      
      private var var_1892:String;
      
      private var _disposed:Boolean;
      
      private var var_1615:int;
      
      private var var_1893:Boolean;
      
      private var var_797:String;
      
      private var var_821:PublicRoomData;
      
      private var var_1891:int;
      
      private var _index:int;
      
      private var var_1890:String;
      
      private var _type:int;
      
      private var var_1597:String;
      
      private var var_820:GuestRoomData;
      
      private var var_1894:String;
      
      private var _open:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         _index = param1.readInteger();
         var_1892 = param1.readString();
         var_1894 = param1.readString();
         var_1893 = param1.readInteger() == 1;
         var_1890 = param1.readString();
         var_797 = param1.readString();
         var_1891 = param1.readInteger();
         var_1615 = param1.readInteger();
         _type = param1.readInteger();
         if(_type == const_843)
         {
            var_1597 = param1.readString();
         }
         else if(_type == const_697)
         {
            var_821 = new PublicRoomData(param1);
         }
         else if(_type == const_552)
         {
            var_820 = new GuestRoomData(param1);
         }
      }
      
      public function get folderId() : int
      {
         return var_1891;
      }
      
      public function get popupCaption() : String
      {
         return var_1892;
      }
      
      public function get userCount() : int
      {
         return var_1615;
      }
      
      public function get open() : Boolean
      {
         return _open;
      }
      
      public function get showDetails() : Boolean
      {
         return var_1893;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_843)
         {
            return 0;
         }
         if(this.type == const_552)
         {
            return this.var_820.maxUserCount;
         }
         if(this.type == const_697)
         {
            return this.var_821.maxUsers;
         }
         return 0;
      }
      
      public function get popupDesc() : String
      {
         return var_1894;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(this.var_820 != null)
         {
            this.var_820.dispose();
            this.var_820 = null;
         }
         if(this.var_821 != null)
         {
            this.var_821.dispose();
            this.var_821 = null;
         }
      }
      
      public function get index() : int
      {
         return _index;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return var_820;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get picText() : String
      {
         return var_1890;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return var_821;
      }
      
      public function get picRef() : String
      {
         return var_797;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get tag() : String
      {
         return var_1597;
      }
      
      public function toggleOpen() : void
      {
         _open = !_open;
      }
   }
}
