package com.ms.tomf
{
	//***********************************************************************************//
	import flash.display.MovieClip;
	import flash.display.Stage;
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	//***********************************************************************************//
	public class Control extends MovieClip
	{
	//***********************************************************************************//
		private var lol:Number;
	//***********************************************************************************//
		public function Control()
		{
			super();
			
		
		}
	//***********************************************************************************//	
		public function testNum():Number
		{
			lol = Math.random()*200;
			
			return lol;
		}
	//***********************************************************************************//
	}
}