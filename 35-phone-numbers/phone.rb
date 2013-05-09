
class Phone
  attr_reader :phone
  
  def initialize(phone)
    @phone = phone.gsub(/[^0-9]/, "")
  end

  def invalid_number
    "0000000000"
  end

  def number
    phone_array = phone.split("")
    if phone_array.length == 11 && phone_array[0] == "1"
      return phone_array[1..-1].join
    else phone_array.length == 11 || phone_array.length == 9
      return invalid_number
    end
    phone_array.join
  end



end