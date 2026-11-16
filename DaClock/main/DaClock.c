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
    struct tm currentTime = {0};
    
    initializeClock();

    while(1) {

        if (getCurrentTime(&currentTime) == 0) {

            updateDisplay(&currentTime);
        }

        vTaskDelay(pdMS_TO_TICKS(1000));
    }

}

void initializeClock(void) {
    struct tm initialTime = {0};

    initialTime.tm_mday = 12;
    initialTime.tm_mon = 10;
    initialTime.tm_year = 126;

    initialTime.tm_hour = 12;
    initialTime.tm_min = 0;
    initialTime.tm_sec = 0;

    initialTime.tm_isdst = -1;

    time_t timestamp = mktime(&initialTime);

    if(timestamp == (time_t)-1) {
        printf("Time init failed\n");
        return;
    }

    struct timeval tv;
    tv.tv_sec = timestamp;
    tv.tv_usec = 0;

    if (settimeofday(&tv, NULL) != 0) {
        printf("System time update failed\n");
    }
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
    printf("%02d-%02d-%04d %02d:%02d:%02d\n",
        currentTime ->tm_mday,
        currentTime ->tm_mon +1,
        currentTime ->tm_year + 1900,

        currentTime ->tm_hour,
        currentTime ->tm_min,
        currentTime ->tm_sec);
}

int correctTime(int hour, int minute, int second) {
    struct timeval currentTime;

    if (hour <  0 || hour > 23) {
        printf("No go dude!\n");
        return -1;
    }

    if (minute < 0 || minute > 59) {
        printf("No go bro!\n");
        return -1;
    }

    if (second < 0 || second > 59) {
        printf("No go bud!\n");
        return -1;
    }

    if (gettimeofday(&currentTime, NULL) != 0) {
        return -1;
    }

    struct tm adjustedTime;

    if (localtime_r(&currentTime.tv_sec, &adjustedTime) == NULL) {
        return -1;
    }

    adjustedTime.tm_hour = hour;
    adjustedTime.tm_min = minute;
    adjustedTime.tm_sec = second;
    
    time_t timestamp = mktime(&adjustedTime);

    if (timestamp == (time_t)-1) {
        return -1;
    }

    currentTime.tv_sec = timestamp;
    currentTime.tv_usec = 0;

    if (settimeofday(&currentTime, NULL) != 0) {
        return -1;
    }

    return 0;
}
