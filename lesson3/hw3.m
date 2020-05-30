function fee = taxi_fare(d, t)
fee = 5 + 2 * (ceil(d) - 1) + 0.25 * ceil(t);
end