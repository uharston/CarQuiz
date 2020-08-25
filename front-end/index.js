console.log("HELLO URIAH")
const carsAdapter = new CarsAdapter 
const yearForm = document.getElementById("year-input")
const makesForm = document.getElementById("makes-input")
const startQuiz = document.getElementById("start-quiz")
const imageContainerDiv = document.getElementById('image-container')
const quizContainer = document.getElementById("quiz-container")
startQuiz.addEventListener('click', beginQuiz)

function beginQuiz() {
    carsAdapter.fetchQuestions();
    switchToAnswerForm();
}


function switchToAnswerForm() {
    quizContainer.innerHTML = 
    `<form id="answer-form" method="POST">
        <label>Guess The Make and Model</label>
        <input id="answer" type="text" name="answer"> 
        <input type="submit">
    </form>`
    const answerForm = document.getElementById('answer-form')
    answerForm.addEventListener('submit', takeResponse)
    
}

function takeResponse(e) {
    let answer = e.target.getElementsByTagName('input')[0]
    let result = Car.answered[0].checkAnswer(answer.value)
    Car.results.push(result)
    answer.value = ""
    Car.nextQuestion()
    e.preventDefault()
}

function endOfQuiz() {
    quizContainer.innerHTML = 
    `<h2> You are done! ${Car.showResults()}</h2><br>
    <button id="start-quiz">Start the Quiz!</button>`
    const startQuiz = document.getElementById("start-quiz")
    startQuiz.addEventListener('click', beginQuiz)
    imageContainerDiv.innerHTML = ""
}


































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