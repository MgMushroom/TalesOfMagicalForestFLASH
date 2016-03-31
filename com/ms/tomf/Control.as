package com.ms.tomf
{
	public class Control
	{
		private var lol:Number;
		
		public function Control()
		{
			
		}
		
		public function testNum():Number
		{
			lol = Math.random()*200;
			
			return lol;
		}
	}
}