# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

#class EmailAddressParser
  #take the string of addresses on initialization
  #Instances should respond to a #parse instance
    #parses the string into individual addresses and return them in an array

class EmailAddressParser
  attr_reader :addresses
  
  def initialize(addresses)
    @addresses = addresses
  end

  def parse
    addresses.split(/[ ,]/).reject(&:empty?).uniq
  end
end

email_addresses = "john@doe.com, person@somewhere.org"
parser = EmailAddressParser.new(email_addresses)
p parser.parse