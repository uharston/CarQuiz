console.log("HELLO URIAH")
const yearForm = document.getElementById("year-input")
const makesForm = document.getElementById("makes-input")
yearForm.addEventListener('click', sayClick)
// makesForm.addEventListener('click', fetchCarMakes)
function sayClick() {
    console.log("clicked yearForm!")
}
function fetchCarMakes() {
    fetch("http://127.0.0.1:3000/makes")
    .then(res => res.json())
    .then(addMakes)
}

function fetchCarModels(m) {
    console.log("clicked")
//    debugger
//     fetch(`https://vpic.nhtsa.dot.gov/api/vehicles/getmodelsformakeyear/make/${m}/vehicleType/car?format=json`)
//     .then(resp => resp.json())
//     .then(addCarModels)
}

function addCarModels(e) {
   
}

function addMakes(e) {
    const sortedMakes = sortByMake(e)
    sortedMakes.forEach( make => {
        let newMake = document.createElement('option');
        newMake.id = `${make.make_name}-option`
        newMake.innerText = make.make_name 
        newMake.addEventListener('change', fetchCarModels)
        makesForm.firstElementChild.appendChild(newMake)
    })
}

function sortByMake(e) {
    return e.sort(function(a, b) {
        var nameA = a.make_name.toUpperCase(); // ignore upper and lowercase
        var nameB = b.make_name.toUpperCase(); // ignore upper and lowercase
        if (nameA < nameB) {
          return -1;
        }
        if (nameA > nameB) {
          return 1;
        }
      
        // names must be equal
        return 0;
      });
}

fetchCarMakes()