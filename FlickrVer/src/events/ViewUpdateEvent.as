package events
{
	import flash.events.Event;
	
	public class ViewUpdateEvent extends Event
	{
		public static const STATE_CHANGE : String = "stateChange";
		public static const SECOND_IMAGE : String = "secondImage";
		
		public static const CNTRLTOMODEL_FIRST : String = "cntrToModelFirst";
		public static const CNTRLTOMODEL_SECOND : String = "cntrlToModelSecond";
		
		public static const MODELTOVIEW_FIRST : String = "modelToView_First";
		public static const MODELTOVIEW_SECOND : String = "modelToView_Second";
		
		
		public var data:Object;
		
		public function ViewUpdateEvent(type:String,bubbles:Boolean)
		{
			super(type,true);
		}		
		
		override public function clone() : Event
		{
			return new ViewUpdateEvent(type,bubbles);
		}
	}
}