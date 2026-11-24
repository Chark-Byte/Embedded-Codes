#include <stdio.h>
#include <string.h>

#include "freertos/FreeRTOS.h"
#include "freertos/task.h"

#include "esp_system.h"
#include "esp_wifi.h"
#include "esp_event_loop.h"
#include "esp_log.h"
#include "tcpip_adapter.h"

#define WIFI_SSID "The Net"
#define WIFI_PASSWORD "P1$$a1$L1f3!"

static const char *TAG = "The_NET";

static esp_err_t wifi_event_handler(void *ctx, system_event_t *event)
{
    switch(event->event_id)
    {
        case SYSTEM_EVENT_STA_START:

            ESP_LOGI(TG, "ESP8266 started.");
            ESP_LOGI(TAG, "Connecting to ESP32...");
            esp_wifi_connect();

            break;

        case SYSTEM_EVENT_STA_CONNECTED:

            ESP_LOGI(TAG, "Connected to ESP32 access point.");

            break;

        case SYSTEM_EVENT_STA_GOT_IP:

            ESP_LOGI(TAG, "IP address successfully assigned.");

            ESP_LOGI(
                TAG,
                "ESP8266 IP: " IPSTR,
                IP2STR(&event->event_info.got_ip.ip_info.ip)
            );

            break;

        case SYSTEM_EVENT_STA_DISCONNECTED:

            ESP_LOGW(TAG, "Disconnected from ESP32.");
            ESP_LOGI(TAG, "Attemptingto reconnect...");

            esp_wifi_connect();

            break;

        default:
            break;
    }

    return ESP_OK;
}


static void wifi_init(void)
{
    tcpip_adapter_init();

    ESP_ERROR_CHECK(
        esp_event_loop_init(wifi_event_handler, NULL)
    );
    wifi_init_config_t config = WIFI_INIT_CONFIG_DEFAULT();

    ESP_ERROR_CHECK(
        esp_wifi_init(&config)
    );

    ESP_ERROR_CHECK(
        esp_wifi_set_storage(WIFI_STORAGE_RAM)
    );

    ESP_ERROR_CHECK(
        esp_wifi_set_mode(WIFI_MODE_STA)
    );
    wifi_config_t wifi_config = {
        .sta = {
            .ssid = WIFI_SSID,
            .password = WIFI_PASSWORD
        }
    };

    ESP_ERROR_CHECK(
        esp_wifi_start()
    );
}

void app_main(void)
{
    ESP_LOGI(TAG, "Welcome to The-Net...");

    wifi_init();

    while (1)
    {
        vTaskDelay(1000 / portTICK_PERIOD_MS);
    }
}