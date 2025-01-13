*** Settings ***
Documentation     Contains all variables keywords settings for all project
Library    SeleniumLibrary
Library    OperatingSystem


*** Variables ***
# Output Directory Settings
${OUTPUT_DIR}    ${CURDIR}${/}..${/}results
${LOG_DIR}       ${OUTPUT_DIR}${/}logs
${REPORT_DIR}    ${OUTPUT_DIR}${/}reports
${SCREENSHOT_DIR}    ${OUTPUT_DIR}${/}screenshots

*** Keywords ***
Setup Test Output Directories
    Create Directory    ${OUTPUT_DIR}
    Create Directory    ${LOG_DIR}
    Create Directory    ${REPORT_DIR}
    Create Directory    ${SCREENSHOT_DIR}