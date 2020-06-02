function T = trio(n, m)
T = zeros(3 * n, m)
i = 1
j = 1
while j <= 3
    while i <= n * j
        T(i, 1 : m) = j
        i = i + 1
    end
    j = j + 1
end

// without while
function T = trio(n, m)
T = zeros(3 * n, m)
T(1 : n, 1 : m) = 1
T(n + 1 : 2 * n, 1 : m) = 2
T(2 * n + 1 : 3 * n, 1 : m) = 3
end
