*** Settings ***
Resource   ../Pages/Chapter_element_page.robot
Resource   ../Pages/publish_accordion_page.robot
Library    Selenium2Library
Library     ../libraries/login_lib.py
Library     ../libraries/chapter_lib.py

*** Variables ***
#********Chapter Elements******
${ChapterTitle}
${ChapterSubTitle}
${ChapterAbreviationUrl}
${ChapterBackgroundPath}
${ChapterTablePath}
${ChapterOverlayPath}

*** Test Cases ***
#*****Method to add all the information to the chapter element
Set info to Chapter Element
    Set All Data to Chapter Element
    Complete info on chapter Element  ${CHAPTER_TITLE_GLOBAL}  ${CHAPTER_SUB_TITLE_GLOBAL}  ${CHAPTER_ABREVIATION_URL}  ${CHAPTER_TABLE_PATH_GLOBAL}  ${CHAPTER_BRACKGROUND_GLOBAL}  ${CHAPTER_OVERLAY_GLOBAL}

*** Keywords ***

#*****Method to set all the elements for chapter******
Set All Data to Chapter Element
    ${ChapterTitle}  Set Title
    set suite variable  ${CHAPTER_TITLE_GLOBAL}  ${ChapterTitle}
    ${ChapterSubTitle}  Set SubTitle

    set suite variable  ${CHAPTER_SUB_TITLE_GLOBAL}  ${ChapterSubTitle}
    ${ChapterAbreviationUrl}  Set Abreviation Url
    set suite variable  ${CHAPTER_ABREVIATION_URL}  ${ChapterAbreviationUrl}
    ${ChapterTablePath}  Set Path Table Contents
    set suite variable  ${CHAPTER_TABLE_PATH_GLOBAL}  ${ChapterTablePath}
    ${ChapterBackgroundPath}  Set Path Background
    set suite variable  ${CHAPTER_BRACKGROUND_GLOBAL}  ${ChapterBackgroundPath}
    ${ChapterOverlayPath}  Set Path Overlay
    set suite variable  ${CHAPTER_OVERLAY_GLOBAL}  ${ChapterOverlayPath}


