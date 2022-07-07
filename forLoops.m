% For-loops

count_i = 0;
for i = 1:10
    count_i = count_i + 1;
end
disp(count_i)
disp(i)

count_j = 0;
for j = 1:10
    if j > 6
        count_j = count_j + 1;
    end
end
count_j
j