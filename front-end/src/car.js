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
        const imageContainerDiv = document.getElementById('image-container')
        
        imageContainerDiv.innerHTML = `
        <div class="w3-card-4 w3-light-grey w3-center w3-hover-shadow" style="max-width: 500px; margin:auto; margin-top: 30px; background: white; padding: 20px;">
            <div class="mapouter">
                <div class="gmap_canvas">
                    <img src=${car[Object.keys(car)[0]].car.images[0].url} id="quiz-image" class="w3-image">
                </div>
            
            </div>
        </div>`
        
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
     
        let correctAnswers = result.filter( e => e === true)
        return `You got ${correctAnswers.length} out of 10 correct.`
    }

    static clearBoard() {
        this.unanswered = []
        this.answered = [] 
        this.results = [] 
     }

 }