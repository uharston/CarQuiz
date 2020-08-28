class CarsAdapter {

    constructor() {
        this.baseUrl = "http://127.0.0.1:3000"
    }
    //fetch
    fetchQuestions() {
        fetch(this.baseUrl + "/game")
        .then(res => res.json())
        .then(this.loadGame)
        
    }
    //instantiate
    loadGame(e) {
        e.forEach(newCar => new Car( Object.assign(newCar, {forQuiz: true} ) ));
        Car.addImageToDom();
     }
     //patch 
     updateScore(car) {
         let configObj = {
             method: 'PATCH',
             headers: {
                 "Content-Type": "application/json",
                 "Accepts": "application/json"
             },
             body: JSON.stringify(car)
         }
        
         fetch(this.baseUrl + `/cars/${car['car'].id}`, configObj)
            .then(function(resp) {
               return resp.json()  } )
            .then(function(res) {
                return Car.showStats(res)})
     }

     fetchAllCars() {
         fetch(this.baseUrl + '/cars')
            .then(resp => resp.json())
            .then(this.initializeCars)
     }

     initializeCars(e) {
        e.forEach( newCar => new Car( Object.assign(newCar, {forQuiz: false} ) ) );
        Car.renderCars(); 
     }

     


}