#!/usr/bin/python3

import requests
import json

# pip install fontawesome
import fontawesome as fa


__author__ = "Sreejith Sreekumar"
__email__ = "sreekumar.s@husky.neu.edu"
__version__ = "0.0.1"


url = 'http://dataservice.accuweather.com/currentconditions/v1/2251525?language=en&apikey=<apikey>'

response = requests.get(url)
data = json.loads(response.text)
desc = data[0]['WeatherText'].lower()
temp = str(data[0]['Temperature']['Imperial']['Value'])

if desc=="sunny" or desc=="mostly sunny" or desc=="partly sunny" or desc=="hazy sunshine" or desc=="hot":
    print(fa.icons['sun-o'] + " " + temp + " °F")
    
elif desc=="mostly cloudy" desc=="cloudy":
    print(fa.icons['cloud'] + " " + temp + " °F")
    
elif desc=="dreary (overcast)":
    print(fa.icons['skyatlas'] + " " + temp + " °F")
    
elif desc=="partly cloudy" or desc=="intermittent clouds":
    print(fa.icons['mixcloud'] + " " + temp + " °F")
    
elif desc=="showers" or desc=="mostly cloudy w/ showers" or desc=="partly sunny w/ showers" or desc=="t-storms"or desc=="mostly cloudy w/ t-storms"or desc=="partly sunny w/ t-storms"or desc=="rain" or desc=="partly cloudy w/ showers"or desc=="mostly cloudy w/ showers":
    print(fa.icons['umbrella'] + " " + temp + " °F")
    
elif desc == "windy"  or desc == "thunderstorms"  or desc == "partly cloudy w/ t-storms":
    print(fa.icons['bolt'] + " " + temp + " °F")
    
elif desc == "flurries" or desc == "mostly cloudy w/ flurries" or desc == "partly sunny w/ flurries"or desc == "snow"or desc == "mostly cloudy w/ snow"or desc == "ice"or desc == "sleet"or desc == "freezing rain"or desc == "rain and snow"or desc == "cold" or desc == "mostly cloudy w/ snow" or desc == "mostly cloudy w/ flurries")
    print(fa.icons['snowflake-o'] + " " + temp + " °F")
    
elif desc == "clear" or desc == "mostly clear" or  desc == "hazy moonlight":
    print(fa.icons['moon-o'] + " " + temp + " °F")
    
    
    
    
    
    
    
    

