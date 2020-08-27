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
        
        let answer = e.target.getElementsByTagName('input')[0] //find the user's answer
        const car = Car.answered[Car.answered.length - 1] //find the car to compare answer
        const result = car['car'].checkAnswer(answer.value) // compare answers. return boolean 
        car.answer = result 

        carsAdapter.updateScore(car)
        answer.value = ""
        Car.nextQuestion();
        e.preventDefault();
    }

     static nextQuestion() {
        this.answered.length === 10 ? endOfQuiz() : this.addImageToDom()
    }

    static showResults() {
        const a = []
        const result = [] 
        for(let i = 0; i < 10; i++) {
            a.push(Object.keys(this.answered[i])[0])
        }
        for(let i = 0; i < 10; i++) {
            result.push(Car.answered[i][a[i]].answer)
        }
     
        let correctAnswers = result.filter( e => e === true)
        return `You got ${correctAnswers.length} out of 10 correct.`
    }

    static clearBoard() {
        this.unanswered = []
        this.answered = [] 
        this.results = [] 
     }

 }