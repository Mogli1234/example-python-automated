*** Settings ***
Resource  base_page.robot
Library  String
Library  Selenium2Library

*** Variables ***

#*****Random number******


#*****Post Data Variables********
${POST_DATA_ACCORDION}      xpath=//div[@class='accordion-panel active']
${POST_DATA_TITLE_FIELD}          //div[@class='accordion-panel active']//div[@class='form-row']/input[@name='title']
${POST_DATA_SLUG_FIELD}           name=slug
${POST_DATA_DESCRIPTION_FIELD}  //textarea[@name='description']
${POST_DATA_UPLOAD_IMAGE}   id=id_promo_image
${POST_DATA_CATEGORY}       xpath=//select[@name='category']
${POST_DATA_SUBCATEGORY}    xpath=//select[@name='subcategory']
${POST_DATA_TAG_FIELD}      //div[@class='fuzzy-search']/div[@class='search-box']/input[@type='text']
${POST_DATA_TAG_RESULT}     xpath=//div[@class='fuzzy-search']/div[@class='search-results']/div[@class='result-item']


*** Keywords ***
#********Method to add information to post Data*******
Add Info to Post Data element
    [Arguments]  ${title}  ${description}  ${path_of_mage}  ${tag}  ${random_string}
    Set Text to Title  ${title}
    Set Text to Slug   ${random_string}
    Set Text to Description  ${description}
    Set Path of Image to Upload  ${path_of_mage}
    Select Category and SubCategory
    Select Element on the Tag Field  ${tag}


#**** Method to select category and subcategory****
Select Category and SubCategory
    Click on Category
    Select From List By Value  ${POST_DATA_CATEGORY}  4
    Click on subcategory
    Select From List By Value  ${POST_DATA_SUBCATEGORY}  30

#**********Method to select the Tag*********
Select Element on the Tag Field
    [Arguments]  ${tag}
    Click on TagField
    Sent Text to TagField  ${tag}
    Click on Tag Result

#****Click Method******
Click on Category
    click on element  ${POST_DATA_CATEGORY}

Click on SubCategory
    click on element  ${POST_DATA_SUBCATEGORY}

Click on TagField
    click on element  ${POST_DATA_TAG_FIELD}

Click on Tag Result
    click on element  ${POST_DATA_TAG_RESULT}

#********Set Text Methods******
Sent Text to TagField
    [Arguments]  ${tag}
    Type On Input Field  ${POST_DATA_TAG_FIELD}  ${tag}


Set Text to Title
    [Arguments]  ${title_text}
    Type On Input Field  ${POST_DATA_TITLE_FIELD}  ${title_text}


Set Text to Slug
    [Arguments]  ${RANDOM_NUMBER}
    Type on Input Field  ${POST_DATA_SLUG_FIELD}  ${RANDOM_NUMBER}


Set Text to Description
    [Arguments]  ${description_text}
    Type On Input Field  ${POST_DATA_DESCRIPTION_FIELD}  ${description_text}


Set Path of Image to Upload
    [Arguments]  ${path_image}
    Type On Input Image  ${POST_DATA_UPLOAD_IMAGE}  ${path_image}
