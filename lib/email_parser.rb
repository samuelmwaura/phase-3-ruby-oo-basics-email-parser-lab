# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').


class EmailAddressParser
    attr_accessor :addresses

    def initialize(addresses)
       @addresses = addresses
    end

    def parse
        @addresses.split(/[,\s]+/).uniq
        # if @addresses.include? "," && " " #if has a return value
        #   @addresses.split(/\s|,/).uniq  #uniq will only return unique values in the array after spliting nb- notice the implicit return value
        # elsif @addresses.include? ","
        #   @addresses.split(",").uniq
        # elsif @addresses.include? " "
        #     @addresses.split(" ").uniq
        # end
    end
end

this_parser = EmailAddressParser.new("john@doe.com, person@somewhere.org")