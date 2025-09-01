# IMRXT1050-EVKB Ecompass HTTP Server #


![Screenshot from 2025-05-05 09-09-52](https://github.com/user-attachments/assets/9c3f6f51-5634-4657-ac96-430d2133338a)

This application launches an HTTP Server that display the data aquired from the onboard FXOS8700CQ Ecompass.

## Requirements ## 
- NXP IMRXT1050-EVKB Evaluation Board
- MCUXpresso IDE
- Ethernet Connection
- Serial Monitor interface (eg. PuTYY) (optional)

## Installation ##
1. Clone the repository
2. Open it with MCUxpresso
3. Build it
4. Connect the board to the computer
5. Run in debug mode

There will be also information in the serial console. By default it uses the UART port, but you can change it to semihost mode in the project configurations.
It uses DHCP to find an suitable IP address, but you can change LWIP configurations to set an fixed address.

## Usage ##

The following endpoints, alongside the LWIP defaults, are avaiable at the web server:
- /gui/ecompass - the interface shown in the picture above
- /gui/button - debug page showing the number of times the user button (SW8) has been pressed
- /api/ecompass - JSON data from the ecompass readings
- /api/button - JSON data from the button readings

## Documentation ## 

For further documentation on the board or on how to configure the IDE please refer to [this repository](https://github.com/lucaslpmoura/IMXRT1050-EVKB).
The supporting files cited on the paper, including experimental samples and scritps, can be found on the [support_files](https://github.com/lucaslpmoura/IMRXT1050_Ecompass/tree/main/support_files) directory.
