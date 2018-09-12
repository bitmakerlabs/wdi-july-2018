// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

document.addEventListener('DOMContentLoaded', function() {

//get all links
var robocont = document.querySelector('#robot-container');
var robodetails = document.querySelector('#robot-details');
// console.log(robolinks);


// for (var i =0; i < robolinks.length;i++) {

// 	robolinks[i].addEventListener('click',function(e){
// 		e.preventDefault();
		
// 		console.log(e.target.parentNode.href)

// 	}) }


robocont.addEventListener('click',function(e){

	e.preventDefault();

	var robotlink = e.target.parentNode.href

	if (robotlink){

		// console.log(e.target.parentNode.href)
		$.ajax({
			url: robotlink,
			method: 'GET',
			dataType: 'json'
		}).done(function(data){
			// console.log(data);
			// robodetails.innerHTML = data;

			// var divTag = document.createElement('div');
			// var imgTag = document.createElement('img');
			// imgTag.src = 'http://robohash.org/'+ data.address;
			// var pTag = document.createElement('p');
			// pTag.innerText = data.name
			// divTag.append(imgTag)
			// divTag.append(pTag)
			// robodetails.innerHTML = divTag.innerHTML;

			// robodetails.innerHTML = `<img src="http://robohash.org/`+ data.address+`"/><p>`+ data.name+ `</p>`

			var source   = document.getElementById("entry-template").innerHTML;
			var template = Handlebars.compile(source);	
			robodetails.innerHTML = template(data);

		});

	}

});

		



});
