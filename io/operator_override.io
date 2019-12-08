dividedBy := Number getSlot("/")
Number / := method(denominator, if(denominator == 0, 0, call target dividedBy(denominator)))
