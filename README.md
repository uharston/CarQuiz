# js_rails_project

[X] Save Game Stats to DB 
    (There should be information on total games played,
    how often each car is guessed correctly, 
    what car is most wrong )
[] Allow answers in variety of formats
    (Answers should be case insensitive, 
    correct answers shouldn't be super strict)

[ ] Let The User Know if they answered correctly after each question 
    [X]-> Find the method that loads the individual question => Car.takeResponse(e)
        []-> carsAdapter.updateScore(car) patch request now sends update info back in order to render so stats to user after question

    [X]-> Neaten how class arrays are nested - unanswered

    [X]-> Fixed the affected code from unnested OOJS Car class arrays
        [X]-> make takeResponse() Car method work with un-nested OOJS Car class arrays
        [X]-> make patchRequest work with un-nested OOJS Car class arrays
        [X]-> make showResults() and displayResults() work with un-nested OOJS Car class arrays
        [X]-> fix endOfQuiz() errors

[X]-> Make new API endpoint that only sends 10 random cars from the quiz

[] Make a study for the quiz area that displays all of the cars 
    []-> Make a Study the Cars Button on the landing page 


Fetch Request
1. [X] fetch 10 Cars for the quiz 
2. [] update correct answers after each question, display stats regarding how many users get this question correct
3. [] fetch all of the cars so users can study for the quiz 
