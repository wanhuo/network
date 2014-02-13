package
{
	/**
	 * 玩家状态包 
	 * @author Dalton
	 * 
	 */	
	public class PlayerStatePack
	{
		public var velocity:Vector2;
		public var position:Vector2;
		public var acceleration:Vector2;
		public var time:uint;
		
		public function PlayerStatePack()
		{
		}
		
		public function clone():PlayerStatePack {
			var p:PlayerStatePack = new PlayerStatePack();
			p.velocity = velocity.clone();
			p.position = position.clone();
			p.acceleration = acceleration.clone();
			return p;
		}
		
		/**
		 * 实际的包字节数
		 * 速度为两个浮点，8个字节
		 * 位置为两个浮点，8个字节 
		 * 发送包的时间
		 * @return 
		 * 
		 */		
		public function get totalBytes():Number {
			return 8 + 8 + 4 + 8;
		}
	}
}