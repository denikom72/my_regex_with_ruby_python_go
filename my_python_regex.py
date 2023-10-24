import re

with open('text.txt', 'r') as file:
    text = file.read()

email_pattern = r'\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,7}\b'
emails = re.findall(email_pattern, text)
print(emails)

#

import re

text = "Contact us at +1 (123) 456-7890 or 555-555-5555 or 555.555.5555"

phone_pattern = r'(\+\d{1,2} \(\d{3}\) \d{3}-\d{4}|\d{3}-\d{3}-\d{4}|\d{3}.\d{3}.\d{4})'
phone_numbers = re.findall(phone_pattern, text)
print(phone_numbers)

#

import re

with open('document.html', 'r') as file:
    html = file.read()

url_pattern = r'http[s]?://(?:[a-zA-Z]|[0-9]|[$-_@.&+]|[!*\\(\\),]|(?:%[0-9a-fA-F][0-9a-fA-F]))+'
urls = re.findall(url_pattern, html)
print(urls)

#

import re

text = "IP addresses: 192.168.1.1, 10.0.0.1, and 256.256.256.256"

ip_pattern = r'\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\b'
ipv4_addresses = re.findall(ip_pattern, text)
print(ipv4_addresses)

#

text = File.read('text.txt')
email_pattern = /\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,7}\b/
emails = text.scan(email_pattern)
puts emails

#

text = "Contact us at +1 (123) 456-7890 or 555-555-5555 or 555.555.5555"
phone_pattern = /(\+\d{1,2} \(\d{3}\) \d{3}-\d{4}|\d{3}-\d{3}-\d{4}|\d{3}.\d{3}.\d{4})/
phone_numbers = text.scan(phone_pattern)
puts phone_numbers

#
html = File.read('document.html')
url_pattern = %r{http[s]?://(?:[a-zA-Z]|[0-9]|[$-_@.&+]|[!*\\(\\),]|(?:%[0-9a-fA-F][0-9a-fA-F]))+}
urls = html.scan(url_pattern)
puts urls

#

text = "IP addresses: 192.168.1.1, 10.0.0.1, and 256.256.256.256"
ip_pattern = /\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\b/
ipv4_addresses = text.scan(ip_pattern)
puts ipv4_addresses

