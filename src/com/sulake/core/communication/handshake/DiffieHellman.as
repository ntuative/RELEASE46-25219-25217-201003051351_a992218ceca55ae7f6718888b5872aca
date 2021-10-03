package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_1345:BigInteger;
      
      private var var_967:BigInteger;
      
      private var var_1572:BigInteger;
      
      private var var_1571:BigInteger;
      
      private var var_2212:BigInteger;
      
      private var var_2162:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         var_1345 = param1;
         var_1572 = param2;
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return var_2212.toRadix(param1);
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         var_1571 = new BigInteger();
         var_1571.fromRadix(param1,param2);
         var_2212 = var_1571.modPow(var_967,var_1345);
         return getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return var_2162.toRadix(param1);
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + var_1345.toString() + ",generator: " + var_1572.toString() + ",secret: " + param1);
         var_967 = new BigInteger();
         var_967.fromRadix(param1,param2);
         var_2162 = var_1572.modPow(var_967,var_1345);
         return true;
      }
   }
}
