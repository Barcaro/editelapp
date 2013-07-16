$('#detailsPage').live('pageshow', function(event) {
	var id = getUrlVars()["id"];
	$.getJSON(serviceURL + 'getportfolio.php?id='+id+ '&callback=?', displayPortfolio);
});

function displayPortfolio(data) {
	var portfolio = data.item;

	$('#portfolioPic').attr('src', 'pics/' + portfolio.picture);
	$('#fullName').text(portfolio.firstName + ' ' + portfolio.lastName);
	$('#portfolioTitle').text(portfolio.title);
	$('#city').text(portfolio.city);
	
	if (portfolio.managerId>0) {
		$('#actionList').append('<li><a href="portfoliodetails.html?id=' + portfolio.managerId + '"><h3>Responsabile</h3>' +
				'<p>' + portfolio.managerFirstName + ' ' + portfolio.managerLastName + '</p></a></li>');
	}
	if (portfolio.reportCount>0) {
		$('#actionList').append('<li><a href="reportlist.html?id=' + portfolio.id + '"><h3>Relazioni dirette</h3>' +
				'<p>' + portfolio.reportCount + '</p></a></li>');
	}
	if (portfolio.email) {
		$('#actionList').append('<li><a href="mailto:' + portfolio.email + '"><h3>Email</h3>' +
				'<p>' + portfolio.email + '</p></a></li>');
	}
	if (portfolio.officePhone) {
		$('#actionList').append('<li><a href="tel:' + portfolio.officePhone + '"><h3>Tel. ufficio</h3>' +
				'<p>' + portfolio.officePhone + '</p></a></li>');
	}
	if (portfolio.cellPhone) {
		$('#actionList').append('<li><a href="tel:' + portfolio.cellPhone + '"><h3>Tel. cellulare</h3>' +
				'<p>' + portfolio.cellPhone + '</p></a></li>');
		$('#actionList').append('<li><a href="sms:' + portfolio.cellPhone + '"><h3>SMS</h3>' +
				'<p>' + portfolio.cellPhone + '</p></a></li>');
	}
	$('#actionList').listview('refresh');
	
}

function getUrlVars() {
    var vars = [], hash;
    var hashes = window.location.href.slice(window.location.href.indexOf('?') + 1).split('&');
    for(var i = 0; i < hashes.length; i++)
    {
        hash = hashes[i].split('=');
        vars.push(hash[0]);
        vars[hash[0]] = hash[1];
    }
    return vars;
}
