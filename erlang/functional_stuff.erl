-module(functional_stuff).
-export([get_value/2, totals/1]).

get_value(LookupKey, KeyValues) -> lists:nth(1, [ Value || {Key, Value} <- KeyValues, Key == LookupKey]).

totals(ShoppingList) ->
    [ {Item, Quantity * Price} || {Item, Quantity, Price} <- ShoppingList ].
