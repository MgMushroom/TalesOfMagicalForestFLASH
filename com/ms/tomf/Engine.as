package com.ms.tomf
{	//***********************************************************************************//
	//Tales Of Magical Forest
	//Started 31.3.2016 converted from old project/version
	// SS & SL
	//***********************************************************************************//
	import com.ms.tomf.Control;
	
	import flash.display.MovieClip;
	import flash.display.Shape;
	import flash.display.Stage;
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	import flash.events.MouseEvent;
	import flash.geom.Point;
	import flash.media.Sound;
	import flash.media.SoundChannel;
	import flash.net.URLRequest;
	import flash.text.TextField;

	//***********************************************************************************//
	public class Engine extends MovieClip
	{
	//***********************************************************************************//
		private var mushroom:Mushroom = new Mushroom;
		private var ground:Ground = new Ground();
		private var back:Back = new Back();
		private var textF:TextField = new TextField;
		private var ladders:Ladders = new Ladders;
	//*******************************************//	
		private var test:Number;
		private var test1:Control = new Control;
		private var test2:Number;
	//*******************************************//		
		private var touchX:Number;
		private var touchY:Number;
		private var currentX:String;
		private var currentY:String;
		private var currentT:String;
	//*******************************************//		
		private var array:Array = new Array(0,0);
		private var spaceDown:Boolean;
		private var wDown:Boolean;
		private var aDown:Boolean;
		private var dDown:Boolean;
	
		private var soundC:SoundChannel = new SoundChannel;
	
		//*******************************************//
		private var speedConstant:Number = 2.8;
		private var gravity:Number = 0;
		private var jump:Number = 55;
		private var scrollX:int;
		private var scrollY:int;
		private var ySpeed:int ;
		private var xSpeed:int;
		private var friction:Number = 0.95;
		private var gravityRealistic:Boolean;
		private var jumpCounter:Boolean;
		private var onLaddersSpeed:Number = 4;
	//***********************************************************************************//
		private var downBumping:Boolean = false;
		private var downBumpPoint:Point = new Point(0, -50);
		private var upBumping:Boolean = false;
		private var upBumpPoint:Point = new Point(0, -mushroom.height * 1.5);
		private var onLadders:Boolean = false;
		
	//***********************************************************************************//	
	//Main function
		public function Engine()
		{
			backG();
			map();
			makeLadders();
			hero();
			text();
			sound();
			stage.addEventListener(Event.ENTER_FRAME, checkKeys);
			
		}
	//***********************************************************************************//
		private function makeLadders():void
		{
			ladders.x = 234,45;
			ladders.y = -128;
			stage.addChild(ladders);
		}	
	
		
	//***********************************************************************************//
		private function backG():void
		{
			back.y = -back.height / 2;
			stage.addChild(back);
		}
		
	//***********************************************************************************//
		private function sound():void
		{
			var soundFile:URLRequest = new URLRequest("bg_music.mp3");        
			var song:Sound = new Sound();
			song.load(soundFile);
			soundC = song.play();
		}
	//***********************************************************************************//
	//bring textbox for showing game values
		private function text():void
		{
			textF.border = true;
			textF.background = true;
			textF.backgroundColor = 0xFF0000;
			
			stage.addChild(textF);
		}
	//***********************************************************************************//
	//bring hero
		private function hero():void
		{
			mushroom.x = stage.stageWidth / 2;
			mushroom.y = 500;
			stage.addChild(mushroom);
		}
	//***********************************************************************************//
	//bring map
		private function map():void
		{
			ground.x = -71,2;
			ground.y = -752;
			stage.addChild(ground);
		}
	//***********************************************************************************//
	//check keys main function
		private function checkKeys(e:Event):void
		{
			stage.addEventListener(KeyboardEvent.KEY_DOWN, keysDown);
			stage.addEventListener(KeyboardEvent.KEY_UP, keysUp);
			stage.addEventListener(MouseEvent.MOUSE_MOVE, onTouch);
			
			//gravity
			collision();
			makeGravity();
			MouseDir();
			assTest();
			keyFunction();		

			
			
			
			
			
		
		}
	//***********************************************************************************//
	private function collision():void
	{
		if(ground.hitTestPoint(mushroom.x + downBumpPoint.x, mushroom.y + downBumpPoint.y, true) ) //Do mushroom hit Ground
		{
			downBumping = true;
		} else {
			downBumping = false;
		}
		
		if(ladders.hitTestPoint(mushroom.x + downBumpPoint.x, mushroom.y + downBumpPoint.y, true) ) //Ladders hitTest
		{
			onLadders= true;
		} else {
			onLadders = false;
		}
		if(ground.hitTestPoint(mushroom.x + upBumpPoint.x, mushroom.y + upBumpPoint.y, true)) //Do mushroom upHitPoint hit ground
		{
			upBumping = true;
		}
		else
		{
			upBumping = false;
		}
	
	
	}
	
	//***********************************************************************************//
	//Mouse dir output for assosiations
		private function MouseDir():Array
		{
			var outputX:Number = touchX;
			var outputY:Number = touchY;
			
			return [outputX, outputY];
		}
	//***********************************************************************************//
	//checking keys down
		private function keysDown(e:KeyboardEvent):void
		{
			if(e.keyCode == 32)
			{
				spaceDown = true;
			}
			
			if(e.keyCode == 87)
			{
				wDown = true;
			}
			if(e.keyCode == 65)
			{
				aDown = true;
			}
			if(e.keyCode == 68)
			{
				dDown= true;
			}
		}
	//***********************************************************************************//
	// check keys up	
		private function keysUp(e:KeyboardEvent):void
		{
			if(e.keyCode == 32)
			{
				spaceDown = false;
			}
			
			if(e.keyCode == 87)
			{
				wDown = false;
				//if(gravityRealistic==true)
				//{
				//	gravity -= jump;
				//	gravityRealistic=false;
				//}
			
			}
			if(e.keyCode == 65)
			{
				aDown = false;
			}
			if(e.keyCode == 68)
			{
				dDown = false;
			}
		
		}
	//***********************************************************************************//
	//mouse touch dirs	
		private function onTouch(event:MouseEvent)
		{
			touchX = stage.mouseX;
			touchY = stage.mouseY;
		}	
	//***********************************************************************************//
	//gravity
		private function makeGravity():void
		{
			if(downBumping==true)
			{
				gravity = 0;
				ySpeed += 0.1;
			}
			if(upBumping==true)
			{
				ySpeed = 0;
				gravity += 2;
			}
			
			//if(ground.y < -752)
			//{
				
			//}
				
			ground.y -= gravity;
			back.y -= gravity;
			ladders.y -= gravity;
			
			if(downBumping == false)
			{
				//ground.y > -732
				gravity++;
			}
		
			if(onLadders==true)
			{
				gravity=onLaddersSpeed * 3;
			}
		
		
		}	
	//***********************************************************************************//	
	//assosiation test
		private function assTest():void
		{
			currentX = String(touchX);
			currentY = String(touchY);
			test2 = test1.testNum();
			currentT = String(test2);
			array = MouseDir();
			textF.text ="X: " + array[0] + "\n" + "Y: " + array[1] + "\n" + currentT + "\n" + "collisionUP: " + upBumping + "\n" + "collisionDown: " + downBumping;
		}	
	//***********************************************************************************//	
	//	
		
	
		
	//***********************************************************************************//
	//key functions
		private function keyFunction():void
		{
			if(spaceDown)
			{
				if(mushroom.x < touchX)
				{
					xSpeed -= speedConstant;
				}
				
				if(mushroom.x > touchX)
				{
					xSpeed += speedConstant;
				}
			
			}
			if(aDown && spaceDown == false)
			{
				xSpeed += speedConstant;
			}
			if(dDown && spaceDown == false)
			{
				xSpeed -= speedConstant;
			}
			
			if(wDown == true && downBumping==true && ySpeed <= 1 || wDown == true && onLadders==true )
			{
			
				if(downBumping == true)
				{
				ySpeed += jump;
				gravityRealistic=true;
				}
				
				if(onLadders == true)
				{
					ySpeed += onLaddersSpeed;
				}
			
			}
		
			xSpeed *= friction;
			ySpeed *= friction;
			
			ground.x += xSpeed;
			ground.y += ySpeed;
			ladders.x += xSpeed;
			ladders.y += ySpeed;
			back.x += xSpeed;
			back.y += ySpeed;
		
		}	
	//***********************************************************************************//
	}
}