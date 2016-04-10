package com.ms.tomf.Objects
{
	import com.ms.tomf.Objects.Map;
	import com.ms.tomf.Screens.InGame.Controls;
	import com.ms.tomf.Screens.InGame.InGame;
	import com.ms.tomf.Screens.InGame.Physics;
	import com.ms.tomf.Screens.Menus.MainMenu;
	
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.geom.Point;
	
	
	public class Player extends MovieClip
	{
		private var check:Boolean = true;
		
		//Player attributes
		public static var attributes:Object = new Object;
		public static var state:Object = new Object;
		//Player point vars
		public static var bumpPoints:Object = new Object;
		//Player points
		public static var leftPoint:Point; 
		public static var rightPoint:Point;
		public static var upPoint:Point;
		public static var downPoint:Point;
		private var switchSide:Boolean=false;
		
		public function Player()
		{
			trace("PLAYER ACTIVE");
			
			this.x = 600 - this.width *0.5;
			this.y = 400 - this.height*0.5;
			setAttributes();
			setPoints();
		}
		
		private function setPoints():void
		{	
			leftPoint= new Point(0, 52.6);
			rightPoint= new Point(80, 52.6);
			upPoint = new Point(40, 0);
			downPoint = new Point(40, 105.2);
			
			bumpPoints.up = false;
			bumpPoints.down = false;
			bumpPoints.left = false;
			bumpPoints.right = false;
		}
	
		private function setAttributes():void
		{	
			attributes.health = 100;
			attributes.stamina = 100;
			
			this.addEventListener(Event.ENTER_FRAME, checkAttributes)
			this.addEventListener(Event.ENTER_FRAME, checkAnimation)
		
		}
		
		private function checkAttributes(e:Event):void
		{	
			if(attributes.health <= 0)
			{state.dead = true;}
			
			if(attributes.stamina < 100)
			{attributes.stamina += 0.15;}
		}
	
		private function checkAnimation(e:Event):void
		{	
			if(Controls.keyboard.a == false && Controls.keyboard.d == false)
			{
				gotoAndPlay("standingR");
			}
			if(Player.bumpPoints.down == false && Physics.movement.speedY < 0)
			{
				gotoAndPlay("jumpingR");
			}
		}
	}
}