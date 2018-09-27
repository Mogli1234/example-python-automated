*** Settings ***
Resource   ../Pages/post_data_element_page.robot
Library    Selenium2Library
Library     ../libraries/postdata_lib.py

*** Variables ***
#*******PostData element*****
${PostDataTitle}
${PostDataDescription}
${PostDataImagePath}
${PostDataTag}
${PostDataSlug}

*** Test Cases ***
#***Post Data info
Set Info on PostData
     Set All Post Data Elements
     Add Info to Post Data element  ${TITLE_GLOBAL}  ${DESCRIPTION_GLOBAL}  ${PATHIMAGE_GLOBAL}  ${TAG_GLOBAL}  ${SLUG_GLOBAL}

*** Keywords ***
#****Set Methods for Post Data element******
Set All Post Data Elements
    ${PostDataTitle}  Set Title PostData
    set suite variable  ${TITLE_GLOBAL}  ${PostDataTitle}
    ${PostDataSlug}  Set Slug
    set suite variable  ${SLUG_GLOBAL}  ${PostDataSlug}
    ${PostDataDescription}  Set Description PostData
    set suite variable  ${DESCRIPTION_GLOBAL}  ${PostDataDescription}
    ${PostDataImagePath}  Set Path Upload Image
    set suite variable  ${PATHIMAGE_GLOBAL}  ${PostDataImagePath}
    ${PostDataTag}  Set Tag
    set suite variable  ${TAG_GLOBAL}  ${PostDataTag}