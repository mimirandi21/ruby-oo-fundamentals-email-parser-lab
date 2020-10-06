
# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

#create class
class EmailAddressParser

    attr_accessor :email_addresses

    def initialize(email_addresses)
        @email_addresses = email_addresses
    end
    
    def parse
        email_array = []
        addresses = @email_addresses.split
        
        addresses.each do |address| email_array << address.chomp(',') end
        email_array = email_array.uniq

        return email_array
    end
end