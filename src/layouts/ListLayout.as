package layouts
{
	import core.IMatrixContainer;
	import core.IlayoutContainer;
	import core.IlayoutElement;
	import core.IlayoutManager;
	
	import utils.UiConst;
	
	/**
	 *@author swellee
	 *2013-7-10
	 *列表容器布局管理
	 */
	public class ListLayout implements IlayoutManager
	{
		public function ListLayout()
		{
		}
		
		public function doLayout(contianer:IlayoutContainer):void
		{
			var list:IMatrixContainer=contianer as IMatrixContainer;
			if(!list)return;
			
			var eles:Vector.<IlayoutElement>=list.layoutElements;
			for (var i:int = 0; i < eles.length; i++) 
			{
				var child:IlayoutElement=eles[i];
				var loc:int;
				if(list.direction==UiConst.VERTICAL)
				{
					loc=(list.vGap+child.bounds.height)*i;
					child.setXY(0,loc);
				}
				else
				{
					loc=(list.hGap+child.bounds.width)*i;
					child.setXY(loc,0);
				}
			}
			
		}
	}
}