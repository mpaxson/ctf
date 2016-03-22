from pwn import *
from bs4 import BeautifulSoup
#import socket
import urllib2
import requests


session = requests.Session()
url = 'http://challenges.hackucf.org/easy2.php'
headers = {'User-Agent': 'Mozilla/5.0'}

r = session.get(url)

##get the 
page  = r.content

soup = BeautifulSoup(page)


#gets the text between the two elements 
expression = soup.find('expression').get_text()

print expression
answer = eval(expression)
print answer

payload = {'answer': answer}



x = session.post(url, data = payload)

page2 = x.content


#page2 = response.content ##content of response in html form

soup = BeautifulSoup(page2) ##add form to beautiful sup to parse

responsetext= soup.prettify()##prints out 
print responsetext

#now we need to parse the expression



#response = s.recv(1024)

#print response

#page = urllib2.urlopen(url)
#soup = BeautifulSoup(page.read())



#s.close();

















