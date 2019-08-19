@echo off

set currentpath=%cd%
cd %~dp0
echo %cd%

echo Installing Drivers...

echo =============================================
echo installing GPIO driver
echo =============================================
pnputil -i -a .\Drivers\x86\GPIO\iaiogpio.inf

echo GPIO Drivers installation complete!

echo =============================================
echo installing HSUART driver
echo =============================================
pnputil -i -a .\Drivers\x86\HSUART\iaiouart.inf

echo HSUART Drivers installation complete!

echo =============================================
echo installing I2C driver
echo =============================================
pnputil -i -a .\Drivers\x86\I2C\iaioi2c.inf

echo I2C Drivers installation complete!

echo =============================================
echo installing PWM driver
echo =============================================
pnputil -i -a .\Drivers\x86\PWM\VLV2Core.inf

echo PWM Drivers installation complete!

cd %currentpath%


