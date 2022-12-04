import requests #dependency

url = "https://discordapp.com/api/webhooks/1048510542958051328/975q-JHeLdq6xE80f7qdonNFF8l0hosEWUNKw08KjqcA6mDG7xN5ehR1bywlZkfGu8qr" #webhook url, from here: https://i.imgur.com/f9XnAew.png

#for all params, see https://discordapp.com/developers/docs/resources/webhook#execute-webhook
data = {
    "content" : "",
    "username" : "TOTP"
}

#leave this out if you dont want an embed
#for all params, see https://discordapp.com/developers/docs/resources/channel#embed-object

otp = open('otp.txt').read()
name = open('name.txt').read()


data["embeds"] = [
    {
        "description" : name,
        "title" : otp
    }
]

result = requests.post(url, json = data)

try:
    result.raise_for_status()
except requests.exceptions.HTTPError as err:
    print(err)
else:
    print("Payload delivered successfully, code {}.".format(result.status_code))

#result: https://i.imgur.com/DRqXQzA.png
