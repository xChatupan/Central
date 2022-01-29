*** Settings ***
Resource    ../03-Common/Officemate-SIT-Home-Search-Common.robot

*** Keywords ***
# Given Section #

Change Language to
    [Arguments]                		${Language}
    Click Change Language          	${Language}

# When Section #

I search with less than 1 character
    Click Search Button

I verify Place Holder
    Click Search Textbox

I search by Product
   	[Arguments]                		${Product}
   	Input Search Textbox			${Product}
   	Click Search Button

I am suggested with less than 1 character
	Click Search Textbox

I am suggested by
	[Arguments]                		${Product}
   	Input Search Textbox			${Product}
   	Click Search Textbox

Select Category
	[Arguments]                		${Category}
	Select Category Value			${Category}

Select SKU
	[Arguments]                		${SKU}
	Select SKU Value				${SKU}

# Then Section #

I should not get Search Result
    Verify not get Search Result

I should get Place Holder
	[Arguments]                		${Place Holder}
    Verify Place Holder				${Place Holder}

I should get Search Not Found
	[Arguments]                		${Product}
    Verify Search Not Found			${Product}

I should get Search Result
    Verify Search Result

I should not get Suggest Result
	Verify not get Suggest Result

I should get Suggest Not Found
    Verify Suggest Not Found

I should get Suggest Result
	[Arguments]                		${Suggest}
    Verify Suggest Result			${Suggest}

I should get Suggest Result by Category
    Verify Suggest Result by Category

I should get Suggest Result by SKU
    Verify Suggest Result by SKU
