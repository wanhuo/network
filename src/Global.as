package
{
	import flash.utils.getTimer;

	public class Global
	{
		public static var elapse:Number = 0;
		public static var lastTime:Number = getTimer();
		public static var bytes:Number = 0;
		
		public static var delay:Number = 150;
		public static var range:Number = 20;
		public static var fps:int;
		
		public function Global()
		{
		}
	}
}