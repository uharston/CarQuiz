# js_rails_project

[X] Save Game Stats to DB 
    (There should be information on total games played,
    how often each car is guessed correctly, 
    what car is most wrong )
[] Allow answers in variety of formats
    (Answers should be case insensitive, 
    correct answers shouldn't be super strict)

[X] Let The User Know if they answered correctly after each question 
    [X]-> Find the method that loads the individual question => Car.takeResponse(e)
        [X]-> carsAdapter.updateScore(car) patch request now sends update info back in order to render so stats to user after question

    [X]-> Neaten how class arrays are nested - unanswered

    [X]-> Fixed the affected code from unnested OOJS Car class arrays
        [X]-> make takeResponse() Car method work with un-nested OOJS Car class arrays
        [X]-> make patchRequest work with un-nested OOJS Car class arrays
        [X]-> make showResults() and displayResults() work with un-nested OOJS Car class arrays
        [X]-> fix endOfQuiz() errors

[X]-> Make new API endpoint that only sends 10 random cars from the quiz

[X] Make a study for the quiz area that displays all of the cars 
    [X]-> Make a Study the Cars Button on the landing page 
    [X]-> Fetch all the cars
    [X]-> Clear the homepage
    [X]-> Render the blank page where that cars index will go with nav bar
[] Polish the Css on study page 


Fetch Request
1. [X] fetch 10 Cars for the quiz 
2. [X] update correct answers after each question, display stats regarding how many users get this question correct
3. [X] fetch all of the cars so users can study for the quiz 
4. [] allow user to like and dislike questions 
