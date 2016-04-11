package com.ms.tomf.Screens.Menus
{
	import com.ms.tomf.Objects.MenuItems.InGameMenuBg;
	import com.ms.tomf.Objects.MenuItems.RestartInGamebtn;
	import com.ms.tomf.Objects.MenuItems.MainInGamebtn;
	import com.ms.tomf.Screens.InGame.Controls;
	
	import flash.display.MovieClip;
	import flash.events.Event;
	
	public class InGameMenu extends MovieClip
	{
		
		private var inGameMenuContent:Object = new Object;
		
		public function InGameMenu()
		{
			this.addEventListener(Event.ENTER_FRAME, checkKey);
			setInGameMenuContent();
			addInGameMenuContent();
		}
		private function setInGameMenuContent():void
		{
			inGameMenuContent.bg = new InGameMenuBg;
			inGameMenuContent.restartBtn = new RestartInGamebtn;
			inGameMenuContent.mainBtn = new MainInGamebtn;
		}
		private function addInGameMenuContent():void
		{
			this.addChild(inGameMenuContent.bg);
			this.addChild(inGameMenuContent.restartBtn);
			this.addChild(inGameMenuContent.mainBtn);
		}
		private function checkKey(e:Event):void
		{
			if(Controls.keyboard.esc)
			{
				this.visible = true;
			}else{
				this.visible = false;
			}
		
		}
	}
}