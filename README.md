# js_rails_project

[X] Save Game Stats to DB 
    (There should be information on total games played,
    how often each car is guessed correctly, 
    what car is most wrong )
[] Allow answers in variety of formats
    (Answers should be case insensitive, 
    correct answers shouldn't be super strict)

[ ] Let The User Know if they answered correctly after each question 
    []-> Find the method that loads the individual question 

    [X]-> Neaten how class arrays are nested - unanswered

    []-> Fixed the affected code from unnested OOJS Car class arrays
        [X]-> make takeResponse() Car method work with un-nested OOJS Car class arrays
        [X]-> make patchRequest work with un-nested OOJS Car class arrays
        [X]-> make showResults() and displayResults() work with un-nested OOJS Car class arrays
        [X]-> fix endOfQuiz() errors

    [X]-> Make new API endpoint that only sends 10 random cars from the quiz
