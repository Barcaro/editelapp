$('#reportListPage').live('pageshow', function(event) {
	var id = getUrlVars()["id"];
	console.log("reports for " + id);
	$.getJSON(serviceURL + 'getreports.php?id='+id+'&callback=?', function (data) {
		var reports = data.items;
		$.each(reports, function(index, portfolio) {
			$('#reportList').append('<li><a href="portfoliodetails.html?id=' + portfolio.id + '">' +
					'<h4>' + portfolio.firstName + ' ' + portfolio.lastName + '</h4>' +
					'<p>' + portfolio.title + '</p>' +
					'<span class="ui-li-count">' + portfolio.reportCount + '</span></a></li>');
		});
		$('#reportList').listview('refresh');
	});
});
