# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailParser
  
attr_accessor :emails 
  
def initialize(emails)
  @emails = emails 
end 

def parse 
  if self.emails.split(",").length > 1 
    emails_array = self.emails.split(", ")
    emails_array2 = []
    emails_array.each do |email|
      emails_array2 << email.split
    end
    return emails_array2.flatten.uniq 
  else 
    emails_array = self.emails.split(" ")
    return emails_array.uniq
  end
end 
  
end 