*** Settings ***
Library           ./res.py

*** Keywords ***
keyword1
    [Arguments]    ${a}
    log    ${a}
    log    ${a}
    log    ${a}
    log    ${a}
    log    ${a}
    log    ${a}
    Log    ${a}
    Run Keyword    keyword3

keyword2
    [Arguments]    ${a}
    log    ${a}

keyword3
    res_kw
