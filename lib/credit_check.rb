card_number = "5541808923795240"
# Convert my string into an integer 
# Convert my new integer into an array 
# Double every other number and if the sum of the doubled number is greater than 
# 9 sume the 2 digits together. Then sum all the numbers in the array together. Valid card number is if the 
# sum is divisble by 10 
# Your Luhn Algorithm Here
def luhn_algorithm(card_number)
    num_array = card_number.to_i.digits.reverse 
    doubled_array = []
    summed_array = []

    num_array.each_with_index do |digit, index| 
    # Starting from the right asking if the index is odd and multiplying by 2.     
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
        "The number #{card_number} is valid!"
    else 
        "The number #{card_number} is invalid!"
    end
end 
puts luhn_algorithm(5541808923795240)










# Output
## If it is valid, print "The number [card number] is valid!"
## If it is invalid, print "The number [card number] is invalid!"
