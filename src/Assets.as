package
{
	import flash.display.Bitmap;
	import flash.utils.Dictionary;
	import starling.textures.Texture;

	public class Assets
	{
		[Embed(source="../media/graphics/welcome_bg.png")]
		public static const WelcomeBg:Class;
		
		[Embed(source="../media/graphics/bgscroll.png")]
		public static const BgScroll:Class;
		
		[Embed(source="../media/graphics/welcome_rrk.png")]
		public static const WelcomeRRK:Class;
		
		[Embed(source="../media/graphics/title_rrk.png")]
		public static const TitleRRK:Class;
		
		[Embed(source="../media/graphics/welcome_play.png")]
		public static const WelcomePlay:Class;
		
		[Embed(source="../media/graphics/welcome_options.png")]
		public static const WelcomeOptions:Class;
		
		public static var gameTextures:Dictionary = new Dictionary();
		
		public static function getTexture(name:String):Texture
		{
			if ( gameTextures[name] == undefined)
			{
				var bitmap:Bitmap = new Assets[name]();
				gameTextures[name] = Texture.fromBitmap(bitmap);
			}
			return gameTextures[name];
		}
	}
}