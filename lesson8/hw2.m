function charnum = char_counter(fname, character)
fid = fopen(fname, 'rt');
if fid <= 0
    charnum = -1;
else if ischar(character)
        charnum = 0;
        read = fgets(fid);
        while ischar(read)
            charnum = count(read,character) + charnum;
            read = fgets(fid);
        end
else
    charnum = -1;
end
end