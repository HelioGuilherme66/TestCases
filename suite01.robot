*** Settings ***
Resource          ./resources/res01.resource
Resource          ./Sub/resources/res02.resource
Library           SeleniumLibrary    event_firing_webdriver=${EXECDIR}/Sub/Lib/MyListener.py
Library           ./mykw.py

*** Test Cases ***
case01
    # Open Browser    http://www.sapo.pt    firefox
    res02.keyword2    aaaa\na\na
    [Teardown]    Close Browser

case02
    log    ${CURDIR}    console=True
    log    ${EXECDIR}    console=True
    my_kw
    res02.keyword1    hehe

case03
    res02.keyword3
    res01.keyword3
