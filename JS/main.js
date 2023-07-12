// function totalelements()
// {
// var allgenders=document.getElementsByName("gender");
// alert("Total Genders:"+allgenders.length);
// }



// // Get all the <h2> elements in the document
// var headings = document.getElementsByTagName('h2');



// // Loop through the collection of <h2> elements and log their text content
// for (var i = 0; i < headings.length; i++) {
//   console.log(headings[i].textContent);
// }




// Get the div element by its ID
var myDiv = document.getElementById('myDiv');



// Get the button element by its ID
var changeBtn = document.getElementById('changeBtn');



// Add a click event listener to the button
changeBtn.addEventListener('click', function() {
  // Update the content of the div using innerHTML
  myDiv.innerHTML = '<h1>New Heading</h1><p>New paragraph content.</p>';
});
