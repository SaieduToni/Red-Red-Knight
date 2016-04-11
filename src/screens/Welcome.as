package screens
{
	import starling.display.Button;
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.events.Event;
	
	public class Welcome extends Sprite
	{
		private var bg:Image;
		private var bgscroll:Image;
		private var title:Image;
		private var welcomerrk:Image;
		
		private var welcomeplay:Button;
		private var welcomeoptions:Button;
		
		public function Welcome()
		{
			super();
			this.addEventListener(starling.events.Event.ADDED_TO_STAGE, onAddedToStage);
		}
		
		private function onAddedToStage(events:Event):void
		{
			drawScreen();
		}
		
		private function drawScreen():void
		{
			bg = new Image(Assets.getTexture("WelcomeBg"));
			this.addChild(bg);
			
			bgscroll = new Image(Assets.getTexture("BgScroll"));
			this.addChild(bgscroll);
			
			bgscroll = new Image(Assets.getTexture("BgScroll"));
			bgscroll.y = 100;
			this.addChild(bgscroll);
			
			bgscroll = new Image(Assets.getTexture("BgScroll"));
			bgscroll.y = 200;
			this.addChild(bgscroll);
			
			title = new Image(Assets.getTexture("TitleRRK"));
			title.x = 440;
			title.y = 20;
			this.addChild(title);
			
			welcomerrk = new Image(Assets.getTexture("WelcomeRRK"));
			welcomerrk.x = 20;
			welcomerrk.y = 100;
			this.addChild(welcomerrk);
			
			welcomeplay = new Button(Assets.getTexture("WelcomePlay"));
			welcomeplay.x = 500;
			welcomeplay.y = 260;
			this.addChild(welcomeplay);
			
			welcomeoptions = new Button(Assets.getTexture("WelcomeOptions"));
			welcomeoptions.x = 500;
			welcomeoptions.y = 380;
			this.addChild(welcomeoptions);
		}
	}
}