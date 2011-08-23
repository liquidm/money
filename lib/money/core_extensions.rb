class Numeric
  # Converts this numeric to a Money object in the default currency. It
  # multiplies the numeric value by 100 and treats that as cents.
  #
  #   100.to_money => #<Money @cents=10000>
  #   100.37.to_money => #<Money @cents=10037>
  def to_money
    Money.new(self * 100)
  end
end

class String
  # Parses the current string and converts it to a Money object.
  # Excess characters will be discarded.
  #
  #   '100'.to_money       # => #<Money @cents=10000>
  #   '100.37'.to_money    # => #<Money @cents=10037>
  #   '100 USD'.to_money   # => #<Money @cents=10000, @currency="USD">
  #   'USD 100'.to_money   # => #<Money @cents=10000, @currency="USD">
  #   '$100 USD'.to_money   # => #<Money @cents=10000, @currency="USD">
  def to_money
    # Get the currency.
    # matches = scan /([A-Z]{2,3})/ 
    #     currency = matches[0] ? matches[0][0] : Money.default_currency
    #     
    #     # Get the cents amount
    #     matches = scan /(\-?[\d ]+([\.,](\d+))?)/
    #     if matches[0]
    #       cents = matches[0][0].gsub(/,/, '.')
    #       cents.gsub!(/ +/, '')
    #       cents.to_f * 100
    #       Money.new(cents, currency)
    #     else
    #       raise Exception.new("Cannot convert letters to money")
    #     end
    
    Money.new(self)
    
    
  end
end
