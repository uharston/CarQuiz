 class Car {
     static all = [] 
     static game = [] 
     static answered = []
     static results = [] 

     constructor({id, make, model, images}) {
         this.id = id 
         this.make = make 
         this.model = model 
         this.images = images 

         Car.all.push([this])
         Car.game.push(this)
     }

     makeAndModel() {
         return `${this.make} ${this.model}`
     }

     checkAnswer(answer) {
        return this.makeAndModel() === answer ? true : false
     }

   
     static clearBoard() {
        this.game = []
        this.answered = [] 
        this.results = [] 
     }

     static nextQuestion() {
        this.game.length === 0 ? endOfQuiz() : this.addImageToDom()
    }

    static addImageToDom(i = 0) {
        let car = this.game.pop()
        this.answered.push(car)
        imageContainerDiv.innerHTML = `<img src=${car.images[0]['url']} id="quiz-image">`
    }
    

    // static takeResponse(e) {
    //     let answer = e.target.getElementsByTagName('input')[0]
    //     let result = this.answered[0].checkAnswer(answer.value)
    //     this.results.push(result)
    //     answer.value = ""
    //     this.nextQuestion()
    //     e.preventDefault()
    // }

    static showResults() {
        let correctAnswers = this.results.filter( e => e === true)
        return `You got ${correctAnswers.length} out of 10 correct.`
    }
 }