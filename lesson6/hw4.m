function [summa, index] = max_sum(v, n)
l = length(v);
if (l < n)
    summa = 0;
    index = -1;
else 
    index = 1
    i = 1;
    summa = -1 * inf;
    while (i <= l - n + 1)
        temp = sum(v(i : i + n - 1));
        if (temp > summa)
            summa = temp;
            index = i;
        end
        i = i + 1;
    end
end