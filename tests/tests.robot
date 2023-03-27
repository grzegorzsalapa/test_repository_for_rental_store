*** Settings ***
Library               RequestsLibrary

*** Variables ***
${GLOBAL_SESSION}       global_session
${HTTP_LOCAL_SERVER}    http://127.0.0.1:8080

*** Test Cases ***

Post request to create new customer
    ${response}=    POST  ${HTTP_LOCAL_SERVER}/customers/add
    ${customer_id}    Set Variable    ${response.json()}[id]
    Set Suite Variable    ${customer_id}

Post request to create new film
    ${body}    Create Dictionary    title=IT    type=Old    items_total=5
    ${response}=    POST  ${HTTP_LOCAL_SERVER}/films/add    json=${body}
    ${film_id}    Set Variable    ${response.json()}[id]
    Set Suite Variable    ${film_id}

POST to rent film by customer
    ${rented_film}     Create Dictionary   film_id=${film_id}  up_front_days=1
    ${rented_films_list}  Create List     ${rented_film}
    ${body}    Create Dictionary    customer_id=${customer_id}    rented_films=${rented_films_list}
    ${response}=    POST  ${HTTP_LOCAL_SERVER}/films/rent   json=${body}




