class CarsAdapter {

    constructor() {
        this.baseUrl = "http://127.0.0.1:3000/cars"

    }

    fetchQuestions() {
        fetch(this.baseUrl)
        .then(res => res.json())
        .then(loadGame)
    }
    
}