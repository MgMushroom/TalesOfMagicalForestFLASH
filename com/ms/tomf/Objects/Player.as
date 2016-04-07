package com.ms.tomf.Objects
{
	import com.ms.tomf.Objects.Map;
	import com.ms.tomf.Screens.InGame.Physics;
	
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.geom.Point;
	
	public class Player extends MovieClip
	{
		private var check:Boolean = true;
		
		//Player point vars
		public static var bumpPoints:Object = new Object;
		
		//Player points
		public static var leftPoint:Point; 
		public static var rightPoint:Point;
		public static var upPoint:Point;
		public static var downPoint:Point;
		
		public function Player()
		{
			trace("PLAYER ACTIVE");
			
			this.x = 1200 / 2;
			this.y = 400;
		
			setPoints();
		}
		
		private function setPoints():void
		{	
			leftPoint= new Point(0, 66.42);
			rightPoint= new Point(100, 66.42);
			upPoint = new Point(50, 0);
			downPoint = new Point(50, 132.85);
			
			bumpPoints.up = false;
			bumpPoints.down = false;
			bumpPoints.left = false;
			bumpPoints.right = false;
		}
	}
}