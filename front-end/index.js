const carsAdapter = new CarsAdapter 

const startQuiz = document.getElementById("start-quiz")
const imageContainerDiv = document.getElementById('image-container')
const quizContainer = document.getElementById("quiz-container")
const body = document.getElementsByTagName('body')[0]
const contentWrapper = document.getElementById('content-wrapper')
const studyButton = document.getElementById("study-cars")
studyButton.addEventListener('click', displayCars)


document.addEventListener('DOMContentLoaded', () => {
    fireEventListeners();
})

function fireEventListeners() {
    
    const studyButton = document.getElementById("study-cars")
    studyButton.addEventListener('click', displayCars)
    const startQuiz = document.getElementById("start-quiz")
    startQuiz.addEventListener('click', beginQuiz)

}

function displayCars() {
    carsAdapter.fetchAllCars(); 
}

function beginQuiz() {
    Car.clearBoard();
    carsAdapter.fetchQuestions();
    switchToMainCssDesign("quiz");
}


function  switchToMainCssDesign(render) {
    body.innerHTML = 
    `<div class="w3-display-container">
    <div id="grad" class="w3-bar">
    <a href="#" class="w3-bar-item w3-button w3-hover-none w3-text-grey w3-hover-text-white w3-left"><img src="logo/isolated-monochrome-white.svg" alt="LOGO" width="77" height="25" id="img-logo"></a>
    <a href="#" id="start-quiz" class="w3-bar-item w3-button w3-hover-none w3-text-black w3-hover-text-white w3-right">Start Over?</a>
    </div>
    <div id='content-wrapper'>
    
    </div>
    </div>`
    if(render === 'quiz') {
        body.firstElementChild.classList.add('bgimg3') //add background image 
        answerForm(); 
    }
    else if(render === 'results') {
        quizResults(); 
    }
    

}

 function quizResults() {
     body.innerHTML = `
     <div id="myModal" class="modal">
     <!-- Modal content -->
         <div class="modal-content">
             <div class="modal-header">
               <img src="logo/isolated-monochrome-white.svg" alt="LOGO" width="77" height="25" id="img-logo"> 
                 <span class=" w3-right close">&times;</span>
             </div>
             <table class="modal-body w3-table w3-bordered">
                <tr>
                    <th>No.</th>
                    <th>Correct Answer</th>
                    <th>Your Answer</th>
                </tr>
                ${statsTable()}
             </table>
             

             <div class="modal-footer">
                 <h3 class="w3-center" > Thanks For Playing </h3>
             </div>
         </div>
     </div><br><br>
    <div class="bgimg2 w3-display-container">
        <div class="w3-display-middle">
            <div class="w3-center w3-text-white">
                <div class="w3-xxxlarge">Thanks for Playing</div><br><br>
                    <div id="quiz-container" class="text-center w3-animate-top">
                        <img class="result-img" src="logo/default-monochrome-white.svg" alt="LOGO" width="770" height="200" id="img-logo">
                        
                            <span id="myBtn" class="w3-button w3-black w3-opacity"> See your report here</span><br><br><br><br>
                            <button id="start-quiz" class="w3-button w3-round w3-xxlarge w3-opacity w3-black">Play Again</button>
                            <button id="study-cars" class="w3-button w3-round w3-xxlarge w3-opacity w3-black">Study the Cars</button>
                            <button id="add-cars" class="w3-button w3-round w3-xxlarge w3-opacity w3-black">Add Cars</button>
                           
                    </div>
            
        </div>
    </div>
</div>`

var modal = document.getElementById("myModal");

// Get the button that opens the modal
var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal 
btn.onclick = function() {
  modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
  modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}
fireEventListeners();


 }

 function statsTable() {
    return Car.answered.map( (e, i) => {
        return `
        <tr>
            <td>${i + 1}.</td>
            <td>${e.car.makeAndModel()}</td>
            <td>${e.userAnswer}</td>
      </tr>`
    }).join(' ')
}

// function quizResults() {
//     debugger
//     const resultsWrapper = document.createElement('div')
//     resultsWrapper.id = 'results-wrapper'
//     resultsWrapper.innerHTML = `
//     <div class="bgimg2 w3-display-container">
//         <div class="w3-display-middle">
//             <div class="w3-center">
//                 <h1>Isn't Car Spotting Awesome?</h1>
//                 <p>You got a ${Car.percentageCorrectQuiz()}%. See you report here</p>
//                 <p>Try another quiz or study the cars</p>
//                 <p>Add some cars to the quiz lineup</p>
//             </div>
//         </div>
//     </div>`
// debugger
//     const contentWrapper = document.getElementById('content-wrapper')
//     contentWrapper.appendChild(resultsWrapper)
// }



function answerForm() {
    
    const answerWrapper = document.createElement('div')
    answerWrapper.id = 'answer-wrapper'
    answerWrapper.innerHTML = 
    `
    <div id="answer-wrapper" >
        <div id="answer-card" class="w3-card-4 w3-center w3-hover-shadow w3-light-grey " style="max-width: 500px; margin:auto; margin-top: 30px; background: rgba(192, 192, 192, 0.726); padding: 20px;">
            <h2 class="w3-text-black" id="question-title">Do you know this car?</h2>
            <div id="image-container"></div><br>
                <form id="answer-form" method="POST">
                    <input id="answer" class="w3-input" type="text" name="answer" placeholder="Make and Model" > <br>
                    <input class="w3-button w3-block w3-green" type="submit">
                </form>
                <div id="card-content'></div>
            </div>
        </div>
    </div>`
    const contentWrapper = document.getElementById('content-wrapper')
    contentWrapper.appendChild(answerWrapper)

    const answerForm = document.getElementById('answer-form')
    answerForm.addEventListener('submit', Car.takeResponse)
}



function endOfQuiz() {
    // debugger
    // lastPage()
    switchToMainCssDesign('results'); 
    // let answerCard = document.getElementById('answer-card')
    // body.removeChild(answerCard)
    // let resultDiv = document.createElement('div')
    // resultDiv.innerHTML = 
    // `<div class="w3-container w3-center">
    //     <h1 class="w3-jumbo">The Results Are In!</h1>
    //     <hr class="w3-border-grey" style="margin:auto;width:40%"><br>
    // </div>

    // <h2> ${Car.showResults()}</h2><br>

    // <div id="results-container" >
    //     ${displayResults()}
    // </div>`
    
    // body.appendChild(resultDiv)


//     const resultsContainer = document.getElementById('results-container')
 
   


// //     resultsDiv.appendChild
//     // <button id="start-quiz">Start the Quiz!</button>`
//     const startQuiz = document.getElementById("start-quiz")
//     startQuiz.addEventListener('click', beginQuiz)
//     // imageContainerDiv.innerHTML = ""
    

    
}

function displayResults() {
    const last10Questions = Car.all.slice(-10)
    return last10Questions.map( e => {
        return `<div id="answer-card" class="w3-card-4 w3-center w3-hover-shadow w3-light-grey " style="max-width: 500px; margin:auto; margin-top: 30px; background: rgba(192, 192, 192, 0.726); padding: 20px;">
            <div id="image-container"><img src="${e.images[0].url}" id="quiz-image" class="results-image-class ></div><br><br>
            Correct Answer: ${e.makeAndModel()}
            </div>
        </div>`
    })
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