const clickButtonHandler = (evt) => 
{ 
 document.getElementById("myInput").value = document.getElementById("myInput").value
 document.querySelector('.form-control').value = myInput.value + evt.value;
}