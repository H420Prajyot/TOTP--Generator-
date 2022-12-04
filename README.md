# TOTP-Introduction :-

TOTP stands for Time-Based One-Time Password. Many websites and services require two-factor authentication (2FA) or multi-factor authentication (MFA) where the user is required to present two or more pieces of evidence:

Something only the user knows, e.g., password, passphrase, etc.
Something only the user has, e.g., hardware token, mobile phone, etc.
Something only the user is, e.g., biometrics.
A TOTP value serves as the second factor, i.e., it proves that the user is in possession of a device (e.g., mobile phone) that contains a TOTP secret key from which the TOTP value is generated. Usually the service provider that provides a user's account also issues a secret key encoded either as a Base32 string or as a QR code. This secret key is added to an authenticator app (e.g., Google Authenticator) on a mobile device. The app can then generate TOTP values based on the current time. By default, it generates a new TOTP value every 30 seconds.

MinTOTP is a Python tool that can be used to generate TOTP values from a secret key. Additionally, it exposes its functionality as module-level functions for Python developers. It can be used on any system with Python 3.4 or later installed on it.


# How To Use :- 
1) download this repository
2) open the directory
3) run the bash script

COPY PASTE THE COMMANDS
```
git clone https://github.com/H420Prajyot/TOTP-Generator.git
cd TOTP-Generator
bash totp.sh
```
# NOTE :- TO GET TOTP ON DISCORD 
YOU HAVE TO UNCOMMENT THE LINE NUMBER 
25,
29,
31,
39,
40,
44,
46,
58,
63,
65
FROM totp.sh 

---------------------------------AND----------------------------------------

YOU HAVE TO PASTE YOUR DISCORD WEBHOOK IN webhook.py LINE NUMBER 3 
FOR EXAMPLE :- 
```
url = "https://discordapp.com/api/webhooks/1048594207576881328/543q-JHeLdq6xE80f7DIJFOE02303U03JEIJFOIWEHFEIHF29R2OEFB29R22OFB294"
```
