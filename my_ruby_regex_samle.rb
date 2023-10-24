class EmailExtractor
  def self.extract(text)
    email_pattern = /\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,6}\b/
    text.scan(email_pattern)
  end
end

text = "Contact us at user@example.com or support@domain.co.uk"
emails = EmailExtractor.extract(text)
puts emails

#

class URLExtractor
  def self.extract(text)
    url_pattern = /(https?|ftp):\/\/[^\s/$.?#].[^\s]*/
    text.scan(url_pattern)
  end
end

text = "Visit our website at https://example.com and http://www.domain.co.uk"
urls = URLExtractor.extract(text)
puts urls

#

class DateExtractor
  def self.extract(text)
    date_pattern = /\d{4}-\d{2}-\d{2}/
    text.scan(date_pattern)
  end
end

text = "Events on 2023-10-20 and 2023-11-15"
dates = DateExtractor.extract(text)
puts dates
#

class ISBNValidator
  def self.validate(text)
    isbn_pattern = /\b\d{1,5}-\d{1,7}-\d{1,7}-\d{1,7}-\d{1}\b/
    text.scan(isbn_pattern)
  end
end

text = "ISBNs: 978-0451450524 and 0-451-45052-6"
isbns = ISBNValidator.validate(text)
puts isbns

#

class IPAddressExtractor
  def self.extract(text)
    ip_pattern = /\b(?:\d{1,3}\.){3}\d{1,3}\b/
    text.scan(ip_pattern)
  end
end

text = "IP addresses: 192.168.1.1, 10.0.0.1, and 256.256.256.256"
ipv4_addresses = IPAddressExtractor.extract(text)
puts ipv4_addresses

#
class PhoneNumberExtractor
  def self.extract(text)
    phone_pattern = /\+\d{1,3} \(\d{1,5}\) \d{1,8}-\d{1,8}/
    text.scan(phone_pattern)
  end
end

text = "Call us at +1 (123) 456-7890 or +44 20 1234 5678"
phone_numbers = PhoneNumberExtractor.extract(text)
puts phone_numbers

#
class HexColorExtractor
  def self.extract(css)
    hex_color_pattern = /#(?:[A-Fa-f0-9]{3}){1,2}/
    css.scan(hex_color_pattern)
  end
end

css = "color: #FF5733; background: #0088AA; border: 1px solid #CCCCCC;"
hex_colors = HexColorExtractor.extract(css)
puts hex_colors

#

class FunctionParser
  def self.parse(code)
    function_pattern = /def (\w+)\((.*?)\)/
    functions = code.scan(function_pattern)

    functions.map do |function|
      function_name, arguments = function
      argument_list = arguments.split(/,\s*/)
      { function_name: function_name, arguments: argument_list }
    end
  end
end

code = "def add(a, b)\n  return a + b\nend\nsum = add(2, 3)"
functions = FunctionParser.parse(code)

functions.each do |function|
  puts "Function Name: #{function[:function_name]}, Arguments: #{function[:arguments].join(', ')}"
end

#


