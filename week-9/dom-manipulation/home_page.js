// DOM Manipulation Challenge


// I worked on this challenge [by myself, with: ].


// Add your JavaScript calls to this page:


// Release 1:

//http://www.w3schools.com/jsref/met_document_createattribute.asp

var element = document.getElementById('release-0');
element.className = "done";

// Release 2:

//http://www.w3schools.com/jsref/prop_style_display.asp

document.getElementById("release-1").style.display = "none";
// Release 3:

//http://www.w3schools.com/js/js_htmldom_html.asp

//http://www.w3schools.com/js/js_htmldom_elements.asp
var element = document.querySelector('h1');
element.textContent = "I finished release 2!"

// Release 4:

//http://stackoverflow.com/questions/3319/css-background-color-in-javascript

var x = document.getElementById('release-3');
x.style.backgroundColor = "#955251";



// Release 5:

var elems = document.getElementsByClassName('release-4'); 
for(var i=0,a;a=elems[i];i++) { 
  a.style.fontSize = "2em"; 
}  

// Release 6:

var tmpl = document.getElementById('hidden');
document.body.appendChild(tmpl.content.cloneNode(true));