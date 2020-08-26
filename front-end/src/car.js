 class Car {
     static all = [] 
     static unanswered = [] 
     static answered = []
     

     constructor({id, make, model, images}) {
         this.id = id 
         this.make = make 
         this.model = model 
         this.images = images 

         Car.all.push([this])
         Car.unanswered.push( { [this.id]: { "car": this, "answer": "" } } )
         
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
        let car = this.unanswered.pop()
        this.answered.push(car)
        imageContainerDiv.innerHTML = `<img src=${car[Object.keys(car)[0]].car.images[0].url} id="quiz-image">`
    }

    static takeResponse(e) {
        //////////////////////////////////////////////////////////////////////
        let answer = e.target.getElementsByTagName('input')[0]
        const car = Car.answered[Car.answered.length - 1] //the last car added to array => the current car in question 
        const key = Object.keys(car)[0]
        const result = car[key].car.checkAnswer(answer.value)
        
        ///////////////////////////////////////////////////////////////////////
        car[key].answer = result 

        //  car[key].car.updateScore(result)
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
        debugger
        let correctAnswers = result.filter( e => e === true)
        return `You got ${correctAnswers.length} out of 10 correct.`
    }

    static clearBoard() {
        this.unanswered = []
        this.answered = [] 
        this.results = [] 
     }

 }