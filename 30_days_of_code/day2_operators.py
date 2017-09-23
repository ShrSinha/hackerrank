def get_total_cost_of_meal():
    meal_cost = float(input())
    tip_percent = int(input())
    tax_percent = int(input())

    tip = meal_cost * float(tip_percent/100)
    tax = meal_cost * float(tax_percent/100)

    # cast the result of the rounding operation to an int and save it as total_cost.
    # Rounding of 5 is always away from 0 on the number line.
    # However, in Python if the number is being converted into int(), rounding is towards 0 on the number line.
    # Hence, for this problem,  rounding first and then converting to int. 
    # Side note - // division always rounds down even if the value is negative.
    total_cost = int(round(meal_cost + tip + tax,0))
    
    return str(total_cost)

print("The total meal cost is " + get_total_cost_of_meal() + " dollars.")