from bs4 import BeautifulSoup
import urllib.request

import warnings
warnings.filterwarnings("ignore", category=UserWarning, module='bs4')


with urllib.request.urlopen('http://www.datatau.com/newest') as response:
   html = response.read()

soup = BeautifulSoup(html)

selector = soup.select('html body center table')[0]

print(selector.find_all("a")[8].contents[0].replace(" ","*"))
