 class Car {
     static all = [] 
     static unanswered = [] 
     static answered = []
     

     constructor({id, make, model, images}) {
         this.id = id 
         this.make = make 
         this.model = model 
         this.images = images 

         Car.all.push( this )
         Car.unanswered.push( { "car": this, "answer": "" } )
         
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
        Car.nextQuestion();
    }

    static showStats(data) {
   
        const statsWrapper = document.createElement('div')
        const answerWrapper = document.getElementById('answer-wrapper')
        statsWrapper.innerHTML = answerWrapper.innerHTML 
        debugger
        this.percentageCorrectStats(data) 
    }

    static percentageCorrectStats(car) {
        const num = (car.total_correct / car.total_games) * 100
        return `${num}%`
    }

     static nextQuestion() {
        this.answered.length === 10 ? endOfQuiz() : this.addImageToDom()
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