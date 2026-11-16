#include <stdio.h>
#include <WiFi.h>

const char* ssid= "The Net";
const char* password= "$yst3m15FUCK3D!"

void setup()
{
    Serial.begin(115200);

    WiFi.model(WIFI_AP);

    if(WiFi.softAP(ssid, password)) {
        Serial.println("You're In!");
        Serial.println("IP address: ");
        Serial.println(WiFi.softAPIP());
    } else {
        Serial.println("WiFi failed...BTICH!");
    }
}
void loop {

}