*** Settings ***
Library               RequestsLibrary

*** Variables ***
${GLOBAL_SESSION}       global_session
${HTTP_LOCAL_SERVER}    http://127.0.0.1:8080

*** Test Cases ***

Post request to create new customer
    ${response}=    POST  ${HTTP_LOCAL_SERVER}/customers/add

Post request to create new film
    ${body}    Create Dictionary    title=IT    type=Old    items_total=5
    ${response}=    POST  ${HTTP_LOCAL_SERVER}/films/add    json=${body}


