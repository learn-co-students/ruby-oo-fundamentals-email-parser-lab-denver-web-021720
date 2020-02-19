class EmailAddressParser
    def initialize(email_addresses)
        @email_addresses = email_addresses
    end

    def parse
        return_array = @email_addresses

        if return_array.index(",") != nil
            return_array.gsub!(",", "")
        end

        return_array.split(" ").uniq
    end
end