function outpt = treisman(n, search, target)
%n=number of x's and o's you want plotted;
%search='c' or 'p'; 'c' means conjunctive search, 'p' means pop out search
%target= 'y' or 'n' for presence of target in image;
%h=figure;
%pause
%h725=get(h,'CurrentCharacter');

% set  character position
x=rand(n, 1);
y=rand(n,1);

% Set  character features
z=rand(2,1);
if(z(1) <= 0.5)
  target_sym='X';
  not_target='O';  
else
  target_sym='O';
  not_target='X';
end

if(z(2) <= 0.5)
  target_col='r';
  not_col='g';
else
  target_col='g';
  not_col='r';
end

%% Major divion in the function script -- Comment: What does it do?
if(strcmp(target, 'y') && strcmp(search, 'p')) % pop out visual search
    g=text(x(1), y(1), target_sym,'color', target_col);
    for i=2:n/2
        g=text(x(i), y(i), target_sym,'color', not_col);
    end
    for i = n/2+1 : n
        g=text(x(i), y(i), not_target,'color', not_col);
    end
elseif(strcmp(target, 'n') && strcmp(search, 'p')) % null trial - pop out block
    for i=1:n
        if(i<=n/2)
          char='X';
        else
          char='O';
        end
        g=text(x(i), y(i), char, 'color', not_col);
    end

elseif(strcmp(target, 'y') && strcmp(search, 'c')) % conjunction visual search
    % Target symbol
    % Set target
    g=text(x(1), y(1), target_sym,'color', target_col);
    % Set non-target, with target symbol (but not color)
    for i=2:.5*n
        g=text(x(i), y(i), target_sym,'color', not_col);
    end
    %Set non-target, with non-target symbol (but with target color)
    for i = .5*n+1:.75*n
        g=text(x(i), y(i), not_target,'color', target_col);
    end
    %Set non-target, with non-target symbol (and non-taret color)
    for i = .75*n+1:n
        g=text(x(i), y(i), not_target,'color', not_col);
    end
    
elseif(strcmp(target, 'n') && strcmp(search, 'c')) % conjunction visual search
% This still needs fixing
     for i=1:n
            if(i<=n/2)
              char='X';
            else
              char='O';
            end
            g=text(x(i), y(i), char, 'color', not_col);
     end
end

outpt=1;