allergic(elmer,milk).
allergic(elmer,almonds).
allergic(pia,meat).

likes(hannes,milk).
likes(hannes,meat).
likes(elmer,meat).
likes(pia,flour).

contains(pancakes,milk).
contains(pancakes,flour).
contains(meatballs,meat).
contains(bread,flour).

can_eat(Kid, Food) :- likes(Kid, Ingredient), contains(Food, Ingredient), \+allergic(Kid, Ingredient).
