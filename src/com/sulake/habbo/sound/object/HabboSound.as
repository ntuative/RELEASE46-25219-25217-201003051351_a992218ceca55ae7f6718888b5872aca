package com.sulake.habbo.sound.object
{
   import com.sulake.habbo.sound.IHabboSound;
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class HabboSound implements IHabboSound
   {
       
      
      private var var_1007:SoundChannel = null;
      
      private var var_822:Boolean;
      
      private var var_1008:Sound = null;
      
      private var var_643:Number;
      
      public function HabboSound(param1:Sound)
      {
         super();
         var_1008 = param1;
         var_1008.addEventListener(Event.COMPLETE,onComplete);
         var_643 = 1;
         var_822 = false;
      }
      
      public function get finished() : Boolean
      {
         return !var_822;
      }
      
      public function stop() : Boolean
      {
         var_1007.stop();
         return true;
      }
      
      public function play() : Boolean
      {
         var_822 = false;
         var_1007 = var_1008.play(0);
         this.volume = var_643;
         return true;
      }
      
      public function set position(param1:Number) : void
      {
      }
      
      public function get volume() : Number
      {
         return var_643;
      }
      
      public function get ready() : Boolean
      {
         return true;
      }
      
      public function get position() : Number
      {
         return var_1007.position;
      }
      
      public function get length() : Number
      {
         return var_1008.length;
      }
      
      public function set volume(param1:Number) : void
      {
         var_643 = param1;
         if(var_1007 != null)
         {
            var_1007.soundTransform = new SoundTransform(var_643);
         }
      }
      
      private function onComplete(param1:Event) : void
      {
         var_822 = true;
      }
   }
}
