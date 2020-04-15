# CPU FANS
# 75 percent / 1700 rpm
sudo /bin/su -c "echo 190 >/sys/class/hwmon/hwmon5/pwm2"

# CPU PUMP
# 100 percent / 4800 rpm
sudo /bin/su -c "echo 255 >/sys/class/hwmon/hwmon5/pwm7"
