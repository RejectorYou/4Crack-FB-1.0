#!usr/bin/python2.7
# coding=utf-8


import os, time
from src import language

def loginFb(self, url, config):
	os.system('clear')
	print(config.banner())
	print('\n(?) Login with your fb cookies first (?)\n')
	while True:
		cookies = raw_input('Put your FB cookies here: ')
		response = config.httpRequest(url, cookies).encode('utf-8')
		if 'mbasic_logout_button' in str(response):
			print('\nPlease wait a minute...')
			language.main(cookies, url, config)
			try: os.mkdir('log')
			except: pass
			save = open('log/cookies.log','w')
			save.write(cookies.strip())
			save.close()
			print('\n\033[0;92mLogin successfully\033[0m')
			time.sleep(2)
			break
		else:
			print('\n\033[0;91mWrong cookies, please try Again.\n\033[0m')
