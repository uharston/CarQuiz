class CarsAdapter {

    constructor() {
        this.baseUrl = "http://127.0.0.1:3000/cars"
    }
    //fetch
    fetchQuestions() {
        fetch(this.baseUrl)
        .then(res => res.json())
        .then(this.loadGame)
        
    }
    //instantiate
    loadGame(e) {
        for(let i = 0; i < 10; i++) {
            let selectIndex = Math.floor(Math.random() * e.length)
            let newCar = e.splice(selectIndex, 1)
            new Car( newCar[0] )
        }
        Car.addImageToDom();
     }

     updateScore(car) {
         
         let configObj = {
             method: 'PATCH',
             headers: {
                 "Content-Type": "application/json",
                 "Accepts": "application/json"
             },
             body: JSON.stringify(car)
         }
         fetch(this.baseUrl + `/${Object.keys(car)[0]}`, configObj)
            // .then(function(resp) {
            //   return resp.json() })
            // .then(function(res) {
            //     return this.takeData(res)})

     }


}