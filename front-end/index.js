console.log("HELLO URIAH")
const yearForm = document.getElementById("year-input")
const makesForm = document.getElementById("makes-input")
const startQuiz = document.getElementById("start-quiz")
const imageContainerDiv = document.getElementById('image-container')
const quizContainer = document.getElementById("quiz-container")
const BASEURL = "http://127.0.0.1:3000/cars"
startQuiz.addEventListener('click', beginQuiz)
// yearForm.addEventListener('click', sayClick)

function beginQuiz() {
    fetchImage();
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
   nextQuestion()

    e.preventDefault()
    
    console.log("next!!!")
}

function nextQuestion() {
    if(Car.game.length === 0) {
        endOfQuiz(); 
    }
    else {
        addImageToDom();
    }
}

function endOfQuiz() {
    debugger
}

function fetchImage() {
    fetch(BASEURL)
    .then(res => res.json())
    .then(loadGame)
}

function loadGame(e) {
   for(let i = 0; i < 10; i++) {
       let selectIndex = Math.floor(Math.random() * e.length)
       new Car(e[selectIndex])
    }
    addImageToDom();
}

function addImageToDom(i = 0) {
    let car = Car.game.pop()
    Car.answered.push(car)
    imageContainerDiv.innerHTML = `<img src=${car.images[0]['url']} id="quiz-image">`
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
// //    debugger
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