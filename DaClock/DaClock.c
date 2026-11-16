#include <stdio.h>
#include <time.h>
#include <sys/time.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"

void initializeClock(void);
int getCurrentTime(struct tm *currentTime);
void updateDisplay(const struct tm *currentTime);
int correctTime(int tm_hour, int tm_min, int tm_sec);

void app_main(void) {
    struct tm currentTime;
    
    initializeClock();

    while(1) {

        if (getCurrentTime(&currentTime) == 0) {

            updateDisplay(&currentTime);
        }

        vTaskDelay(pdMS_TO_TICKS(1000));
    }

}

void initializeClock(void) {
    struct tm currentTime = {0};

    initializeTime.tm_hour = 12;
    initializeTime.tm_min = 0;
    initializeTime.tm_sec = 0;

    time_t timestamp = mktime(&initialTime);

    struct timeval tv;
    tv.tv_sec = timestamp;
    tv.tv_usec = 0;

    setTimeOfDay(&tv, NULL);
}

int getCurrentTime(struct tm *currentTime) {
    time_t currentTimestamp;

    time(&currentTimestamp);

    if(localtime_r(&currentTimestamp, currentTime) == NULL) {
        return -1;
    }
    return 0; 
}

void updateDisplay(const struct tm *currentTime) {
    printf("%02d:%02d\n", currentTime ->tm_hour, currentTime ->tm_min, currentTime ->tm_sec);
}

int correctTime(int hour, int minute, int second) {
    struct timeval currentTime;

    if (getTimeOFDay(&currentTime, NULL) != 0) {
        return -1;
    }

    struct tm adjustedTime = {0};

    adjustedTime.tm_hour = hour;
    adjustedTime.tm_min = minute;
    adjustedTime.tm_sec = second;
    
    time_t timestamp = mktime(&adjustedTime);

    currentTime.tv_sec = timestamp;
    currentTime.tv_usec = 0;

    if (setTimeOfDay(&currentTime, NULL) != 0) {
        return -1;
    }

    return 0;
}