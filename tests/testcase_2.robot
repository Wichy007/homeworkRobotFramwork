*** Settings ***
Resource    ../keywords/kw_testcase_2.robot



*** Test Cases ***
ตรวจสอบการแสดงข้อมูลหน้าสร้างหัวข้อ "About SU" เมื่อไม่มีการกรอกข้อมูลมาก่อน
    เปิดบราวเซอร์สำเร็จ
    เข้าสู่ระบบ
    ใส่ยูสเซอร์เนม
    กดต่อไป
    ใส่พาสเวิร์ด
    กดsignIn
    กดอยู่ต่อไป
    เลือกเมนู About SU
    เลือก Created button
    # Upload image
    ใส่ข้อความช่อง Topic name in thai
    กดปุ่ม Cancle
    กดปุ่ม Create Again

