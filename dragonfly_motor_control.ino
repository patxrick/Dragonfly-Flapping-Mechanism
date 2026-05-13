#include <Servo.h>

Servo wingServo;

int angle = 0;

void setup()
{
    wingServo.attach(9);
}

void loop()
{
    for(angle = 30; angle <= 150; angle++)
    {
        wingServo.write(angle);
        delay(8);
    }

    for(angle = 150; angle >= 30; angle--)
    {
        wingServo.write(angle);
        delay(8);
    }
}
