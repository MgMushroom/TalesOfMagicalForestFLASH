package com.ms.tomf.Objects.MapObjects.Movement
{
	import flash.display.MovieClip;
	import com.ms.tomf.Objects.MapObjects.Movement.Movement;
	
	public class Movement extends MovieClip
	{
	  	private static var movement:Object = new Object;
		
		public function Movement()
		{
			defineMovementContent();
			addMovementContent();
		}
		
		public function defineMovementContent():void
		{
			movement.ladders = new Ladders;
		}
		
		public function addMovementContent():void
		{
			this.addChild(movement.ladders);
		}
	}
}