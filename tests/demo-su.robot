# *** Settings ***
# Library  SeleniumLibrary

# *** Variables ***
# ${URL}         https://smartplus-dev.su.ac.th/admin/auth
# ${browser}     chrome
# ${clickLogin}     //*[@id="root"]/div/div[2]/div/div/div/div/div/button
# ${inputUser}    //*[@id="i0116"]
# ${username}    pawutinan_s@su.ac.th
# ${nextButton}    //*[@id="idSIButton9"]
# ${inputPassword}    //*[@id="i0118"]
# ${password}    S1tt1d3tlm78
# ${signInButton}    //*[@id="idSIButton9"]
# ${stayAwayButton}    //*[@id="idSIButton9"]

# *** Test Cases ***
# ตรวจสอบการแสดงข้อมูลหน้าสร้างหัวข้อ "About SU" เมื่อไม่มีการกรอกข้อมูลมาก่อน
#     เปิดบราวเซอร์สำเร็จ
#     เข้าสู่ระบบ
#     ใส่ยูสเซอร์เนม
#     กดต่อไป
#     ใส่พาสเวิร์ด
#     กดsignIn
#     กดอยู่ต่อไป

# *** Keywords ***
# เปิดบราวเซอร์สำเร็จ
#     Open Browser    ${URL}    ${browser}
# เข้าสู่ระบบ
#     Wait Until Element Is Visible    xpath=${clickLogin}
#     Click Button    xpath=${clickLogin}
#     Sleep    5s
# ใส่ยูสเซอร์เนม
#     Input Text    xpath=${inputUser}    ${username}
#     Sleep    5s
# กดต่อไป
#     Click Button    xpath=${nextButton}
# ใส่พาสเวิร์ด
#     Wait Until Element Is Visible    xpath=${inputPassword}
#     Input Password    xpath=${inputPassword}    ${password}
#     Sleep    3s
# กดsignIn
#     Click Button    xpath=${signInButton}
#     Sleep    5s
# กดอยู่ต่อไป
#     Click Button    xpath=${stayAwayButton}
#     Sleep    5s
