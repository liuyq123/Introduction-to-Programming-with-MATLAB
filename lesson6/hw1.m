function summa = halfsum(M)
[rows, cols] = size(M)
summa = 0
j = 1
for i = 1:rows
    N = M(i, j : cols)
    summa = summa + sum(N)
    j = j + 1
end
end