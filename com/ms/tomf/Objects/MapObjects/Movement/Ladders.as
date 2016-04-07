﻿package com.ms.tomf.Objects.MapObjects.Movement
{
	import com.ms.tomf.Objects.Player;
	import com.ms.tomf.Screens.InGame.InGame;
	import com.ms.tomf.Screens.InGame.Physics;
	import com.ms.tomf.Screens.InGame.Controls;
	
	import flash.display.MovieClip;
	import flash.events.Event;
	
	public class Ladders extends MovieClip
	{
		public static var onLadders:Boolean;
		
		public function Ladders()
		{
			this.addEventListener(Event.ENTER_FRAME, whenCol);
		}
	
		public function whenCol(e:Event):void
		{
			if(this.hitTestPoint(InGame.inGameContent.player.x + Player.downPoint.x, InGame.inGameContent.player.y + Player.downPoint.y, true ))
			{
				if(Controls.keyboard.w)
				{Physics.movement.speedY -= 5;}
			}
		}
	}
}