// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.


document.addEventListener('DOMContentLoaded', function(){

var myForm = document.querySelector('#new_todo');

myForm.addEventListener('submit', function(e){

    e.preventDefault();

    $.ajax({
        method: myForm.getAttribute('method'),
        url: myForm.getAttribute('action'),
        dataType: 'json',
        data:$(myForm).serialize()
    }).done(function(response){
        console.log("AJAX completed")

        var todo = document.querySelector('#todo_content');
        todo.value = '';

         var myList = document.querySelector('#myList');
        // myList.insertAdjacentHTML('beforeend', response)

        var list = document.createElement('li')
        list.innerText = response.content
        $(myList).append(list);
    })
        console.log("AJAX request made")

})

})
