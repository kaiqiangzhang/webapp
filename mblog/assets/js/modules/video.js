/*
+--------------------------------------------------------------------------
|   Mblog [#RELEASE_VERSION#]
|   ========================================
|   Copyright (c) 2014, 2016 loveinlog. All Rights Reserved
|   http://www.haowuyun.com
|
+---------------------------------------------------------------------------
*/

define(function(require, exports, module) {
	J = jQuery;
	var player;

	function youkuPlayer(vid) {
		player = new YKU.Player('youkuplayer',{
			styleid: '0',
	        client_id: '26fb2b9025380e72',
	        vid: vid
		});
	}
	$('input[name=url]').change(function () {
		var url = $(this).val();
		
		jQuery.getJSON(app.base + '/video/take.json', {url: url}, function (ret) {
			if (ret.code >= 0 ) {
				$('#preview').show();
				youkuPlayer(ret.data.id);
				setContent(ret.data.description);
			} else {
				layer.msg(ret.message, {icon: 2});
			}
		});
	});
	
});