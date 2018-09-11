document.addEventListener("DOMContentLoaded", function() {


var getmonster = document.getElementById("monsters");
var displaymonster = document.getElementById('display');

getmonster.addEventListener('click', function(event){

//	console.log('You clicked on me...')
console.log('Making AJAX call')

//Make a request to Monsters API with ajax
var request = $.ajax({
 	url: "http://monsters-api.herokuapp.com/monsters.html",
 	method: "GET" 
 });

// if the request is completed. do this
request.done(function(data){

	console.log("Request Is completed");
	// console.log(data);
	// for (var i = 0; i < data.length;i++) {
		
	// 	var divTag = document.createElement('div');
	// 	var pTag = document.createElement('p');
	// 	pTag.innerHTML = data[i].name + "  " +data[i].home;
	// 	var imgTag = document.createElement('img');
	// 	imgTag.src = "https://robohash.org/"+ data[i].id +"?set=set2"
	// 	divTag.append(pTag)
	// 	divTag.append(imgTag)

	// 	display.innerHTML += divTag.innerHTML
	// }

	display.innerHTML = data;

});


request.fail(function(){
	console.log('oops!! something went wrong..')
	display.innerHTML = "OPPS! something is wrong...."
});



console.log('AJAX call completed')




});




console.log('Making 2nd AJAX Call POST')

var postmonster = document.getElementById('postmonsters');

postmonster.addEventListener('click',function(){
console.log('clicked')
$.ajax({
	url: "http://monsters-api.herokuapp.com/monsters",
	method: "POST",
	data: {
		monster: {
			name: $('#name').val(),
			home: $('#home').val(),
			creepiness: $('#creepiness').val()
		}
	}
}).done(function(data){
	display.innerHTML = "Monster posted!"
	console.log('yaa... .monster posted')
}).fail(function(){
	console.log('Something went wrong with posting monster')
});


});


});
