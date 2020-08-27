const carsAdapter = new CarsAdapter 

const startQuiz = document.getElementById("start-quiz")
const imageContainerDiv = document.getElementById('image-container')
const quizContainer = document.getElementById("quiz-container")
const body = document.getElementsByTagName('body')[0]


document.addEventListener('DOMContentLoaded', () => {
    startQuiz.addEventListener('click', beginQuiz)
})

function beginQuiz() {
    Car.clearBoard();
    carsAdapter.fetchQuestions();
    switchToAnswerForm();
}


function switchToAnswerForm() {
    
    body.innerHTML = 
    `<div id="grad" class="w3-bar">
        <a href="#" class="w3-bar-item w3-button w3-hover-none w3-text-grey w3-hover-text-white w3-left"><img src="logo/isolated-monochrome-white.svg" alt="LOGO" width="77" height="25" id="img-logo"></a>
        <a href="#" class="w3-bar-item w3-button w3-hover-none w3-text-black w3-hover-text-white w3-right">Start Over?</a>
    </div>
    
    <div id="answer-card" class="w3-card-4 w3-center w3-hover-shadow w3-light-grey " style="max-width: 500px; margin:auto; margin-top: 30px; background: rgba(192, 192, 192, 0.726); padding: 20px;">
        <h2 class="w3-text-black" id="question-title">Do you know this car?</h2>
        <div id="image-container"></div><br>
            <form id="answer-form" method="POST">
                <input id="answer" class="w3-input" type="text" name="answer" placeholder="Make and Model" > <br>
                <input class="w3-button w3-block w3-green" type="submit">
            </form>
        </div>
    </div>`

    const answerForm = document.getElementById('answer-form')
    answerForm.addEventListener('submit', Car.takeResponse)
}



function endOfQuiz() {
    let answerCard = document.getElementById('answer-card')
    body.removeChild(answerCard)
    let resultDiv = document.createElement('div')
    resultDiv.innerHTML = 
    `<div class="w3-container w3-center">
        <h1 class="w3-jumbo">The Results Are In!</h1>
        <hr class="w3-border-grey" style="margin:auto;width:40%"><br>
    </div>

    <h2> ${Car.showResults()}</h2><br>

    <div id="results-container" >
        ${displayResults()}
    </div>`
    
    body.appendChild(resultDiv)


    const resultsContainer = document.getElementById('results-container')
 
   


//     resultsDiv.appendChild
    // <button id="start-quiz">Start the Quiz!</button>`
    const startQuiz = document.getElementById("start-quiz")
    startQuiz.addEventListener('click', beginQuiz)
    // imageContainerDiv.innerHTML = ""
    

    
}

function displayResults() {
    const last10Questions = Car.all.slice(-10)
    debugger
    let arr = [] 
    for(let i = 0; i < last10Questions.length; i++) {  
    arr.push(`
    <div id="answer-card" class="w3-card-4 w3-center w3-hover-shadow w3-light-grey " style="max-width: 500px; margin:auto; margin-top: 30px; background: rgba(192, 192, 192, 0.726); padding: 20px;">
        <div id="image-container"><img src="${last10Questions[i][0].images[0].url}" id="quiz-image" class="results-image-class ></div><br><br>
           Correct Answer: ${last10Questions[i][0].makeAndModel()}
        </div>
    </div>`)
    }
    return arr.join(' ')
}

function last10Questions() {
}


/* <div  class="w3-third w3-margin-bottom">
<div  class="w3-card-4">
    <div id="results-div" class="w3-container w3-center">
        <img src="${Car.all[i][0].images[0].url}" class="results-image-class" ><br>
        Correct Answer: ${Car.all[i][0].makeAndModel()}
    </div>
</div>
</div>} */



































// function sayClick() {
//     console.log("clicked yearForm!")
// }
// function fetchCarMakes() {
//     fetch("http://127.0.0.1:3000/cars")
//     .then(res => res.json())
//     .then(addMakes)
// }

// function fetchCarModels(m) {
//     console.log("clicked")
// //  
// //     fetch(`https://vpic.nhtsa.dot.gov/api/vehicles/getmodelsformakeyear/make/${m}/vehicleType/car?format=json`)
// //     .then(resp => resp.json())
// //     .then(addCarModels)
// }

// function addCarModels(e) {
   
// }

// function addMakes(e) {
//     const sortedMakes = sortByMake(e)
//     sortedMakes.forEach( make => {
//         let newMake = document.createElement('option');
//         newMake.id = `${make.make_name}-option`
//         newMake.innerText = make.make_name 
//         newMake.addEventListener('change', fetchCarModels)
//         makesForm.firstElementChild.appendChild(newMake)
//     })
// }

// function sortByMake(e) {
//     return e.sort(function(a, b) {
//         var nameA = a.make_name.toUpperCase(); // ignore upper and lowercase
//         var nameB = b.make_name.toUpperCase(); // ignore upper and lowercase
//         if (nameA < nameB) {
//           return -1;
//         }
//         if (nameA > nameB) {
//           return 1;
//         }
      
//         // names must be equal
//         return 0;
//       });
// }

// fetchCarMakes()