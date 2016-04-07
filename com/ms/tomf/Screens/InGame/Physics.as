package com.ms.tomf.Screens.InGame
{
	import flash.display.MovieClip;
	import flash.events.*;
	
	import com.ms.tomf.Objects.Map;
	import com.ms.tomf.Screens.InGame.InGame;
	import com.ms.tomf.Objects.Player;
	import com.ms.tomf.Objects.MapObjects.Movement.Ladders;
	
	public class Physics extends MovieClip
	{
		public static var gravity:Object = new Object;
		public static var movement:Object = new Object;
		
		
		public function Physics()
		{
			trace("ADDED PHYSICS");
			
			gravityData();
			movementData();
			
			this.addEventListener(Event.ENTER_FRAME, checkDATA);
		}
		
		private function gravityData():void
		{
			gravity.gravityConst = 1.5;
			gravity.jumpConst = -50;
		}
	
		private function movementData():void
		{
			movement.speedConst = 2;
			movement.speedX = 0;
			movement.speedY = 0;
			movement.scrollX = 0;
			movement.scrollY = 0;
			movement.friction = 0.95;
		}
	
		private function checkDATA(e:Event):void
		{
			
			checkCol();
			keyFunctions();
			functionCol();
			
		}
	
		private function checkCol():void
		{
			if(Map.mapContent.ground.hitTestPoint
				(InGame.inGameContent.player.x + Player.upPoint.x, InGame.inGameContent.player.y + Player.upPoint.y, true))
			{Player.bumpPoints.up = true;} else {Player.bumpPoints.up = false;}
			
			if(Map.mapContent.ground.hitTestPoint
				(InGame.inGameContent.player.x + Player.downPoint.x, InGame.inGameContent.player.y + Player.downPoint.y, true))
			{Player.bumpPoints.down = true;} else {Player.bumpPoints.down = false;}
			
			if(Map.mapContent.ground.hitTestPoint
				(InGame.inGameContent.player.x + Player.leftPoint.x, InGame.inGameContent.player.y + Player.leftPoint.y, true))
			{Player.bumpPoints.left = true;} else {Player.bumpPoints.left = false;}
			
			if(Map.mapContent.ground.hitTestPoint
				(InGame.inGameContent.player.x + Player.rightPoint.x, InGame.inGameContent.player.y + Player.rightPoint.y, true))
			{Player.bumpPoints.right = true;} else {Player.bumpPoints.right = false;}
		}
		
		private function keyFunctions():void
		{
			if(Controls.keyboard.w)
			{/*FunctionCol->if(Player.bumpPoints.down)*/}
			if(Controls.keyboard.s)
			{Physics.movement.speedY += Physics.movement.speedConst;}
			if(Controls.keyboard.d)
			{Physics.movement.speedX += Physics.movement.speedConst;}
			if(Controls.keyboard.a)
			{Physics.movement.speedX -= Physics.movement.speedConst;}
		}
	
		private function functionCol():void
		{
			if(Player.bumpPoints.up)
			{if(Physics.movement.speedY < 0){Physics.movement.speedY *= -0.5;}}	
			
			if(Player.bumpPoints.down)
			{if(Physics.movement.speedY > 0){Physics.movement.speedY *= -0.5;}
			
			if(Controls.keyboard.w && Player.attributes.stamina > 0)
			{Physics.movement.speedY = Physics.gravity.jumpConst;}}
			else{Physics.movement.speedY += gravity.gravityConst;}
			
			if(Player.bumpPoints.left)
			{if(Physics.movement.speedX < 0){Physics.movement.speedX *= -0.5;}}
			
			if(Player.bumpPoints.right)
			{if(Physics.movement.speedX > 0){Physics.movement.speedX *= -0.5;}}
		}	
	}
}
