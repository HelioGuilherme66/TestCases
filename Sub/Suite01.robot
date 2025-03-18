*** Settings ***
Library           Collections
Library           SeleniumLibrary    event_firing_webdriver=${CURDIR}/Lib/SubMyListener.py
Resource          ../resources/res01.resource
Library           ./Lib/SubMyListener.py
Library           ../Sub/Lib/mykw.py

*** Test Cases ***
case01
    # Open Browser    http://www.google.com    firefox
    keyword2    lalala\nlala\nlala
    [Teardown]    Close Browser

case02
    log    ${CURDIR}
    log    ${EXECDIR}
    my_kw
    kw1    hehe
    after navigate to    about:blank    None
