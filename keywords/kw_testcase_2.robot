*** Settings ***
Library  SeleniumLibrary
Library    XML
Resource    ../variable/vertical_testcase_2.robot

*** Keywords ***
เปิดบราวเซอร์สำเร็จ
    Open Browser    ${URL}    ${browser}    options=add_experimental_option("detach", True)
    Maximize Browser Window
เข้าสู่ระบบ
    Wait Until Element Is Visible    xpath=${clickLogin}
    Click Button    xpath=${clickLogin}
ใส่ยูสเซอร์เนม
    Wait Until Element Is Visible    xpath=${inputUser}
    Input Text    xpath=${inputUser}    ${username}
    Sleep    1s
กดต่อไป
    Click Button    xpath=${nextButton}
ใส่พาสเวิร์ด
    Wait Until Element Is Visible    xpath=${inputPassword}
    Input Password    xpath=${inputPassword}    ${password}
กดsignIn
    Wait Until Element Is Visible    xpath=${signInButton}
    Click Button    xpath=${signInButton}
    Sleep    1s
กดอยู่ต่อไป
    Wait Until Element Is Visible    xpath=${stayAwayButton}
    Click Button    xpath=${stayAwayButton}
เลือกเมนู About SU
    Wait Until Element Is Visible    xpath=//*[@id="root"]/div/section/aside/div/div/div[1]/div[2]/ul/li[6]/span[2]
    Click Element    xpath=//*[@id="root"]/div/section/aside/div/div/div[1]/div[2]/ul/li[6]/span[2]
เลือก Created button
    Wait Until Element Is Visible    xpath=//*[@id="root"]/div/div/section/section/header/div[2]/div/div/button
    Click Button    xpath=//*[@id="root"]/div/div/section/section/header/div[2]/div/div/button
# Upload image
#     Wait Until Element Is Visible    xpath=//*[@id="basic"]/div[1]/div/div/div/div/div/div/span/div[1]/span
#     Click Element    xpath=//*[@id="basic"]/div[1]/div/div/div/div/div/div/span/div[1]/span
ใส่ข้อความช่อง Topic name in thai
    Input Text    xpath=//*[@id="basic_topic_topicName"]    Test
กดปุ่ม Cancle
    Click Button    xpath=//*[@id="root"]/div/div/section/section/header/div[2]/div/div[3]/button
กดปุ่ม Create Again
    Wait Until Element Is Visible    xpath=//*[@id="root"]/div/div/section/section/header/div[2]/div/div/button
    Click Button    xpath=//*[@id="root"]/div/div/section/section/header/div[2]/div/div/button