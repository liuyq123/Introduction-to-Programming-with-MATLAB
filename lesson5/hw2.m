function admit = eligible(v, q)
if v > 88 & q > 88 & (v + q) / 2 >= 92
    admit = true
else admit = false
end
end