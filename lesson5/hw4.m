% my brute force
function valid = valid_date(year, month, day)
valid = false;
if (month > 12) | (month < 1)
    valid = false;
end
if (isscalar(year) && isscalar(month) && isscalar(day))
switch month
    case 1
        if (day > 0) && (day <= 31)
            valid = true;
        else
            valid = false;
        end
    case 3
        if (day > 0) && (day <= 31)
            valid = true;
        else
            valid = false;
        end
    case 5
        if (day > 0) && (day <= 31)
            valid = true;
        else
            valid = false;
        end
    case 7
        if (day > 0) && (day <= 31)
            valid = true;
        else
            valid = false;
        end
    case 8
        if (day > 0) && (day <= 31)
            valid = true;
        else
            valid = false;
        end
    case 10
        if (day > 0) && (day <= 31)
            valid = true;
        else
            valid = false;
        end
    case 12
        if (day > 0) && (day <= 31)
            valid = true;
        else
            valid = false;
        end
    case 2
        if (mod(year, 400) == 0)
            if (day > 0) && (day <= 29)
                valid = true;
            else
                valid = false;
            end
        elseif (mod(year, 100) == 0)
                valid = false;
        elseif (mod(year, 4) == 0)
                if (day > 0) && (day <= 29)
                valid = true;
            else
                valid = false;
            end
        else
            if (day > 0) && (day <= 28)
                valid = true;
            else
                valid = false;
            end
        end
    case 4 
        if (day > 0) && (day <= 30)
            valid = true;
        else
            valid = false;
        end
    case 6
        if (day > 0) && (day <= 30)
            valid = true;
        else
            valid = false;
        end
    case 9
        if (day > 0) && (day <= 30)
            valid = true;
        else
            valid = false;
        end
    case 11
        if (day > 0) && (day <= 30)
            valid = true;
        else
            valid = false;
        end
end
end

% Credit to Vandy Coursera
function isvalid = valid_date(y, m, d)
   % Check if the inputs are valid 
   % Check that they are scalars
   if ~(isscalar(y) && isscalar(m) && isscalar(d))
       isvalid = false;
   % Check that inputs are positive
   elseif ~all([y, m, d] > 0)
       isvalid = false;
   % Check that inputs are integers (not the data type)    
   elseif any(rem([y, m, d], 1))
       isvalid = false;
   % Check that m and d are below the max possible
   elseif (m > 12) || (d > 31)
       isvalid = false;
   % The inputs could be a valid date, lets see if they actually are
   else
       % Vector of the number of days for each month
       daysInMonth = [31 28 31 30 31 30 31 31 30 31 30 31];
       % If leap year, change days in Feb
       if isequal(rem(y, 4), 0) && (~isequal(rem(y, 100), 0) || isequal(rem(y, 400), 0))
            daysInMonth(2) = 29;
       end
       maxDay = daysInMonth(m);
       if d > maxDay
           isvalid = false;
       else
           isvalid = true;
       end
       
   end
end