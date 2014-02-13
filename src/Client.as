package
{
	import flash.events.EventDispatcher;
	import flash.utils.setTimeout;

	/**
	 * 虚拟客户端 
	 * @author Dalton
	 * 
	 */	
	public class Client
	{
		// 模拟收到的网络包
		public var packets:Vector.<PlayerStatePack>
		
		public function Client()
		{
			packets = new Vector.<PlayerStatePack>();
		}
		
		public function send(p:PlayerStatePack):void {
			// 延迟加入队列
			setTimeout(sendNow(p), MathUtil.rand(Global.delay - Global.range, Global.delay + Global.range));
			Global.bytes += p.totalBytes;
		}
		
		private function sendNow(p:PlayerStatePack):Function
		{
			return function():void {
				packets.push(p);
			}
		}
	}
}