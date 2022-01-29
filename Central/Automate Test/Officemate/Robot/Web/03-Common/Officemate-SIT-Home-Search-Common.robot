*** Settings ***
Resource         ../03-Common/Officemate-SIT-Resource-Common.robot

*** Keywords ***
Click Change Language
    [Arguments]                  		${Language}
    Click Element when Available    	//div[contains(@class,"LanguageDropdown")]
    Click Element when Available    	//div[contains(@class,"Language") and contains(text(), "${Language}")]

Click Search Button
    Click Element when Available    	//div[@id="btn-searchResultPage"]

Click Search Textbox
	Click Element when Available    	//input[@data-testid="txt-SearchBar"]

Input Search Textbox
    [Arguments]                     	${Product}
    Input Text when Available       	//input[@data-testid="txt-SearchBar"]                 ${Product}

Select Category Value
	[Arguments]                     	${Category}
    Click Element when Available   		//div[contains(@data-suggestion-label, "categories") and contains(text(), "${Category}")]

Select SKU Value
	[Arguments]                     	${SKU}
    Click Element when Available   		//div[contains(@data-suggestion-label, "products") and contains(text(), "${SKU}")]

Verify not get Search Result
	Verify Element Is Not Visible   	//div[@class="_2oxKm"]

Verify Place Holder
    [Arguments]                     	${Place Holder}
	Verify Element Is Visible  		    //input[@data-testid="txt-SearchBar" and @placeholder="${Place Holder}"]

Verify Search Not Found
    [Arguments]                     	${Product}
    Verify Element Is Visible   	    //div[@class="_2oxKm"]
    Verify Element Is Visible   	    //div[@id="pnl-SearchNotFound"]//div[@class="title" and contains(text(), "${Product}")]

Verify Search Result
    Verify Element Is Visible   	    //div[@class="_2oxKm"]
    Verify Element Is Visible   	    //div[@data-testid="pnl-productGrid"]

Verify not get Suggest Result
    Verify Element Is Not Visible   	//div[@class="_4AELR suggestion_container"]

Verify Suggest Not Found
    Verify Element Is Not Visible   	//div[@class="_4AELR suggestion_container"]

Verify Suggest Result
    [Arguments]                     	${Suggest}
    Verify Element Is Visible   	    //div[@class="_4AELR suggestion_container"]//div[contains(text(), "${Suggest}")]

Verify Suggest Result by Category
    Verify Element Is Visible   	    //div[@id="category-page"]//h1[@id="txt-subCategories-name"]
    Verify Element Is Visible   	    //div[@id="category-page"]//div[@data-testid="pnl-productGrid"]

Verify Suggest Result by SKU
    Verify Element Is Visible   	    //div[@id="product-page"]//div[contains(@id, "ProductDetail")]
    