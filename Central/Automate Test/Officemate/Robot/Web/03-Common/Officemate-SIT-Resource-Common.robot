*** Settings ***
Library           			SeleniumLibrary

*** Variables ***
# Site and Browser
${SiteUrl}        			https://www.officemate.co.th/
${Browser}        			Chrome

*** Keywords ***
Open Home Page
    Open Browser            ${SiteUrl}    ${Browser}
    Maximize browser Window

Go To Home Page	
	Go To			        ${SiteUrl}

Close Session
    Close Browser

# Custom Keywords #

Wait Until Element Is Available
	[Arguments]    							${xpath}
	Sleep  1
	Wait Until Element Is Visible    		${xpath}
    Wait Until Element Is Enabled    		${xpath}

Click Element when Available
    [Arguments]    							${xpath}
    Wait Until Element Is Available    		${xpath}
	Mouse Over								${xpath}
    Click Element    						${xpath}

Input Text when Available
    [Arguments]    							${xpath}    ${text}
    Wait Until Element Is Available    		${xpath}
	Sleep	1
    Input Text    							${xpath}    ${text}

Verify Element Is Visible
    [Arguments]    ${xpath}
    Run Keyword And Continue On Failure    	Wait Until Element Is Visible           ${xpath}

Verify Element Is Not Visible
    [Arguments]    ${xpath}
    Run Keyword And Continue On Failure    	Wait Until Element Is Not Visible       ${xpath}
