console.log("HELLO URIAH")
const yearForm = document.getElementById("year-input")
const makesForm = document.getElementById("makes-input")
yearForm.addEventListener('click', sayClick)
makesForm.addEventListener('click', fetchCarMakes)
function sayClick() {
    console.log("clicked yearForm!")
}
function fetchCarMakes() {
    
    fetch("http://127.0.0.1:3000/makes")
    .then(res => res.json())
    .then(addMakes)
}

function addMakes(e) {
    
    e.forEach( make => {
        let newMake = document.createElement('option');
        newMake.innerText = make.make_name 
        makesForm.firstElementChild.appendChild(newMake)
    })
}