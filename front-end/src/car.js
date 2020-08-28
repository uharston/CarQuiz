 class Car {
     static all = [] 
     static unanswered = [] 
     static answered = []
     

     constructor({id, make, model, images, forQuiz}) {
         this.id = id 
         this.make = make 
         this.model = model 
         this.images = images 
         this.forQuiz = forQuiz
        
         if(this.forQuiz) {
            Car.unanswered.push( { "car": this, "answer": "" } )
         }
         else {
            Car.all.push( this )
         }
         
     }

     static renderCars() {
        switchToMainCssDesign() 
     }

     makeAndModel() {
         return `${this.make} ${this.model}`
     }

     checkAnswer(answer) {
        return this.makeAndModel() === answer ? true : false
     }

     updateScore(score) {
         debugger
     }
     
    static addImageToDom(i = 0) {
        let car = this.unanswered.pop() //How are the element's structured in this array? {3: {car: Car, answer: ""} } => try this: {id: 3, car: Car, answer: ""}
        this.answered.push(car)
        const imageContainer = document.getElementById('image-container')
        imageContainer.innerHTML = `<img src=${Car.answered[this.answered.length - 1].car.images[0].url} id="quiz-image" class="quiz-image-class ">`      
    }

    static takeResponse(e) {
        e.preventDefault();
        let answer = e.target.getElementsByTagName('input')[0] //find the user's answer
        const car = Car.answered[Car.answered.length - 1] //find the car to compare answer
        const result = car['car'].checkAnswer(answer.value) // compare answers. return boolean 
        car.answer = result
        answer.value = "" //reset the input field for the next question 
        carsAdapter.updateScore(car) //send the answer boolean to the back-end 
        
        // displayAnswer()
        // Car.nextQuestion();
    }

    static showStats(data) {
        const statsHtml = this.buildStatsHtml(data)
 
        const answerWrapper = document.getElementById('answer-wrapper')
        answerWrapper.innerHTML = ""

        const contentWrapper = document.getElementById('content-wrapper')
        contentWrapper.appendChild(statsHtml)
        
        const statsForm = document.getElementById('stats-form')
        statsForm.addEventListener('submit', this.nextQuestion)

        
        
    }
    
    static buildStatsHtml(data) {
        
        const statsWrapper = document.createElement('div')
        statsWrapper.id = 'stats-wrapper'
     
        const image = this.findLastImage()
      
        statsWrapper.innerHTML = `
            <div id="answer-card" class="w3-card-4 w3-center w3-hover-shadow w3-light-grey " style="max-width: 500px; margin:auto; margin-top: 30px; background: rgba(192, 192, 192, 0.726); padding: 20px;">
                <h2 class="w3-text-black" id="question-title">${this.rightOrWrong()}</h2>
                <h3 class="w3-text-black" id="question-title">This is a ${this.findLastCar()}</h3>
                <div id="image-container">
                    <img src="${image}" id="quiz-image" class="results-image-class">
                </div><br>

                <div id='card-content'>
                    <h4><strong>${this.percentageCorrectStats(data)}</strong> of people get this answer correct</h4>
                </div>
                    <form id="stats-form" method="POST">
                        <input class="w3-button w3-block w3-green" value="Next Question" type="submit">
                    </form>
                    
                </div>
            </div>`  
            return statsWrapper
    }

    static findLastImage() {
        return this.answered[this.answered.length - 1]['car']['images'][0].url
    }

    static findLastCar() {
        return this.answered[this.answered.length - 1]['car'].makeAndModel()    
    }

    static rightOrWrong() {
        return this.answered[this.answered.length - 1]['answer'] ? "Correct!" : "Wrong Answer" 
    }



    static percentageCorrectStats(car) {
        const num = (car.total_correct / car.total_games) * 100
        return `${Math.ceil(num)}%`
    }

     static nextQuestion() {
        //  e.preventDefault(); 
        
        if(Car.answered.length === 10) {
            endOfQuiz()
        } 
        else  {
            switchToMainCssDesign();
            Car.addImageToDom()
        }
    }

    static showResults() {
        let correctAnswers = Car.answered.filter( e => e.answer === true )
        return `You got ${correctAnswers.length} out of 10 correct.`
    }

    static clearBoard() {
        this.unanswered = []
        this.answered = []  
     }

 }