var serviceURL = "http://www.editeltn.it/_demo/services/";

var portfolio;

function stripslashes (str) {
  // +   original by: Kevin van Zonneveld (http://kevin.vanzonneveld.net)
  // +   improved by: Ates Goral (http://magnetiq.com)
  // +      fixed by: Mick@el
  // +   improved by: marrtins
  // +   bugfixed by: Onno Marsman
  // +   improved by: rezna
  // +   input by: Rick Waldron
  // +   reimplemented by: Brett Zamir (http://brett-zamir.me)
  // +   input by: Brant Messenger (http://www.brantmessenger.com/)
  // +   bugfixed by: Brett Zamir (http://brett-zamir.me)
  // *     example 1: stripslashes('Kevin\'s code');
  // *     returns 1: "Kevin's code"
  // *     example 2: stripslashes('Kevin\\\'s code');
  // *     returns 2: "Kevin\'s code"
  return (str + '').replace(/\\(.?)/g, function (s, n1) {
    switch (n1) {
    case '\\':
      return '\\';
    case '0':
      return '\u0000';
    case '':
      return '';
    default:
      return n1;
    }
  });
}

$('#portfolioListPage').bind('pageinit', function(event) {
	getEmployeeList();
});

function getEmployeeList() {

	$.getJSON(serviceURL + 'getportfolios.php' + '?callback=?', function(data) {
		$('#portfolioList li').remove();
		portfolios = data.items;
		$.each(portfolios, function(index, portfolio) {
			if(portfolio.immagine == '') portfolio.immagine = '../_img/Icona-Editel-blog.png';
			$('#portfolioList').append('<li><a href="portfoliodetails.html?id=' + portfolio.id + '">' +
					'<img src="http://www.editeltn.it/_imgd/' + portfolio.immagine + '"/>' +
					'<h4>' + portfolio.titolo + '</h4>' +
					'<p>' + stripslashes(portfolio.descrizione.replace(/(<([^>]+)>)/ig,"").substring(0,200)) + '</p>' +
					'<span class="ui-li-count">' + portfolio.tipo + '</span></a></li>');
		});
		$('#portfolioList').listview('refresh');
	});
}            
