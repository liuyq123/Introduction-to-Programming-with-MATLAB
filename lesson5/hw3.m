function too_young = under_age(age, limit)
if nargin == 1
    limit = 21;
end
if age < limit
    too_young = true;
else
    too_young = false;
end