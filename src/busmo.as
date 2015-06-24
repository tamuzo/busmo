package {
	import flash.display.Sprite;
	import flash.display.Stage;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	
	import starling.core.Starling;

	[SWF(width = "640", height = "960", frameRate = "30", backgroundColor = "#000000")]

	public class busmo extends Sprite {
		/** スターリングインスタンス */
		private var _starling:Starling = null;
		/** ステージ */
		private var _stage:Stage = null;

		/**
		 * コンストラクタ
		 */
		public function busmo() {
			super();
			addEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
		}

		/**
		 * ステージ追加ハンドラ
		 * @param e
		 */
		private function onAddedToStage(e:Event):void {
			removeEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
			stage.align = StageAlign.TOP_LEFT;
			stage.scaleMode = StageScaleMode.NO_SCALE;
			Starling.multitouchEnabled = false;
		}

		/**
		 * 開始する
		 * @param stage
		 */
		public function startStarling(stage:Stage):void {
			_stage = stage;
			_starling = new Starling(StarlingMain, _stage);
			_starling.start();
		}

	}
}
