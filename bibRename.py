import os
import re
import sys
import string
counter = -1
titleWord = ''
author = ''
year = ''

#sys.argv.append("readcube_export.bib")

#----------------------------------------------------------------------
def puncSpaceFilter(inString):
	"""filter out punctuation marks and parentheses from the string AND SPACES!!"""
	filterOut = """;:,.<>'"-_\/()[]{} """
	return inString.translate(None, filterOut)

#----------------------------------------------------------------------
def puncFilter(inString):
	"""filter out punctuation marks and parentheses from the string"""
	filterOut = """;:,.<>'"-_\/()[]{}"""
	return inString.translate(None, filterOut)

#----------------------------------------------------------------------
def conjFilter(inString):
	"""filter out conjunction and single letter words"""
	filterOut = ["a", "an", "the", "of", "so", "yet", "and", "if", "as", "some", "few"]
	titleMatch = re.search('title={(.+)}', inString)
	if titleMatch:
		title = titleMatch.group(1)
		noPuncTitle = puncFilter(title.lower())
		wordList = noPuncTitle.split(" ")
		for word in wordList :
			if word not in filterOut and len(word) >= 2:
				return word
		
	else:
		return ""
	

if os.path.isfile(sys.argv[1]):
	with open(sys.argv[1]) as bibFile:
		for line in bibFile:
			#trigger for dumping and key assembly
			if line.startswith("@"):
				if titleWord and author and year:
					newKeyLine = re.sub("{.+", "{{{0}:{1}:{2},".format(puncSpaceFilter(author.lower()), puncSpaceFilter(year.lower()), puncSpaceFilter(titleWord.lower())), keyLine)
					dumpLine = newKeyLine + dumpLine
					print dumpLine
				else:
					counter += 1
					if counter > 0:
						raise IOError('WARNING: something failed to parse the three required arguments')
				keyLine = line
				dumpLine = ""
				titleWord = ""
				year = ""
				author = ""
				continue
			titleMatch = conjFilter(line)
			if titleMatch:
				titleWord = titleMatch
			authMatch = re.search('author={(.+?)(,|}| and )', line)
			if authMatch:
				author = authMatch.group(1)
			yearMatch = re.search('year={(.+?)}', line)
			if yearMatch:
				year = yearMatch.group(1)
			dumpLine += line
		else:
			if titleWord and author and year:
				newKeyLine = re.sub("{.+", "{{{0}:{1}:{2},".format(puncSpaceFilter(author.lower()), puncSpaceFilter(year.lower()), puncSpaceFilter(titleWord.lower())), keyLine)
				dumpLine = newKeyLine + dumpLine
				print dumpLine
			else:
				counter += 1
				if counter > 0:
					raise IOError('WARNING: something failed to parse the three required arguments')			
else:
	raise IOError('could not find file {}'.format(argv[1]))





	
	