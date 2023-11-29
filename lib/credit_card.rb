#Create a credit card class using upper camel case. Use 2 arguements in 
# initialization. 
class CreditCard 
    attr_reader :card_number, :limit, 
   
    def initialize(card_number, limit)
        @card_number = card_number
        @limit = limit 
    end
   
    def is_valid? 
        num_array = @card_number.to_i.digits.reverse 
        doubled_array = []
        summed_array = []
        num_array.each_with_index do |digit, index|
            if index.even?
                doubled_array << digit * 2
            else 
                doubled_array << digit
            end 
        end 
        doubled_array.each do |num|
            if num > 9
                summed_array << num - 9 
            else 
                summed_array << num
            end 
        end 
        total_sum = summed_array.sum 
            if total_sum % 10 == 0 
                p true 
            else 
                p false 
            end 
    end 
    
    def last_four 
        @card_number[-4, 4]  
    end
end 