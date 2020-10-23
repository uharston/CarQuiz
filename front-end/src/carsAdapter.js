class CarsAdapter {

    constructor() {
        this.baseUrl = "https://salty-brook-99944.herokuapp.com"
    }
    //fetch
    fetchQuestions() {
        fetch(this.baseUrl + "/game")
          .then( res => res.json() )
          .then( this.loadGame )  
    }
    //instantiate
    loadGame(e) {
        e.forEach(newCar => new Car( Object.assign( newCar, { forQuiz: true } ) ));
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
        fetch(this.baseUrl)
        .then(resp => resp.json())
        .then(this.initializeCars)
    }

    initializeCars(e) {
        e.forEach( newCar => new Car( Object.assign(newCar, {forQuiz: false} ) ) );
        Car.renderCars(); 
    }

    patchLikes(e) {
       
        const id = e.target.parentElement.parentElement.parentElement.parentElement.id.split('-').slice(-1)[0]
        carsAdapter.optomisticLikeUpdate(id); 
        const like = {like: 1}

        let configObj = {
            method: 'PATCH',
            headers: {
                "Content-Type": "application/json",
                "Accepts": "application/json"
            },
            body: JSON.stringify(like)

        }
        
        fetch(carsAdapter.baseUrl + `/cars/${id}`, configObj)
            .then(resp => resp.json())
            .then(carsAdapter.updateLikes)
    }

    patchDislikes(e) {
        const id = e.target.parentElement.parentElement.parentElement.parentElement.id.split('-').slice(-1)[0]  
        carsAdapter.dislikeDomUpdate(id); 
        const dislike = {dislike: 1}
        let configObj = {
            method: 'PATCH',
            headers: {
                "Content-Type": "application/json",
                "Accepts": "application/json"
            },
            body: JSON.stringify(dislike)

        }
        
        fetch(carsAdapter.baseUrl + `/cars/${id}`, configObj)
               .then(resp => resp.json())
               .then(carsAdapter.updateDislikes)
    }


    optomisticLikeUpdate(id) {
        const likeForUpdate = document.getElementById(`like-amount-${id}`)
        likeForUpdate.innerText = parseInt(likeForUpdate.innerText) + 1
    }


 
    dislikeDomUpdate(id) {

        const dislikeForUpdate = document.getElementById(`dislike-amount-${id}`)
        dislikeForUpdate.innerText = parseInt(dislikeForUpdate.innerText) + 1
    }
     


}