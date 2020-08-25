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
 }