*** Settings ***
Documentation    Cette suite de tests regroupe les cas de test basic d une authentification 
Resource    ../../resources/keywords/authentification.txt


*** Test Cases ***
Get Authorization Code Using Valid Parameters and Credentials
    [Tags]    AUTH_001
    Create Session    ${ws_mcdonalds_alias}    ${ws_mcdonalds_url}     verify=True
    Get Trusted App Token
    Unlock Account      
    Login Count
    Authorisation    

Retrieve Token Using Valid Authorization Code and Client Credentials
    [Tags]    AUTH_002
    Create Session    ${ws_mcdonalds_alias}    ${ws_mcdonalds_url}     verify=True
    Get Trusted App Token
    Unlock Account      
    Login Count
    Authorisation  
    Get Token





Create Customer Account
    [Tags]    AUTH_0
    Create Session    ${ws_mcdonalds_alias}    ${ws_mcdonalds_url}     verify=True      
    Get App Token
    Create Prospect Customer
    Update Customer     

    
