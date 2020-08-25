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
     
     //fetch 
     fetchResults(results) {
         results.forEach( e => {
            
            let carObj = e 
            let configObj = {
                method: 'PATCH',
                headers: {
                    "Content-Type": "application/json",
                    "Accepts": "application/json"
                },
                body: JSON.stringify(carObj)
            }

            fetch(this.baseUrl + `/${Object.keys(e)[0]}`, configObj)
                .then(res => {
        
                    res.json()})
                .then(resp => {
        


                })
         })
     }
    


}