%% Project 6.4 draft
%main script
% Comment HERE: ____ What is the goal of this code?
start=figure;
text(0.2, 0.7, 'Pop out: Press any key to begin the 1st block');
text(0.05, 0.5, 'For the trials press ''t'' if there''s a target and ''n'' if there isn''t a target');
pause;
close;
right = 0;
wrong = 0;
trial_block=30;

%% 1st block pop-out with n objects; we do 30 trials;
% Comment here: What does this section do? ________________

n=12; % Number of targets on screen
t_target4pop=[]; % pre-allocating our behavioral collection variables
t_no_target4pop=[];
z=randperm(trial_block);
for i=1:trial_block
    if(z(i) <=(trial_block/2))
      target='y';
    else
      target='n';
    end
    g = treisman(n, 'p', target);
    
    tic;
    pause;
    temp_t=toc;
    %t=[t, temp_t];
    temp_ans=get(g, 'CurrentCharacter');
    %ans=[ans, temp_ans];
    close;
    if((strcmp(target, 'y') && strcmp(temp_ans, 't'))) 
        t_target4pop=[t_target4pop, temp_t];
        right = right + 1;
    elseif((strcmp(target, 'n') && strcmp(temp_ans, 'n')))
        t_no_target4pop=[t_no_target4pop, temp_t];
        right = right + 1;
    else
        wrong = wrong + 1;
    end
end
t_targ4pop_mean=mean(t_target4pop);
t_no_targ4pop_mean=mean(t_no_target4pop);



%% Now we begin the conjunction search.
% What does this section do? ____________
next=figure;
text(0.2, 0.7, 'Conjunction: Press any key to begin the 1st blocks');
text(0.05, 0.5, 'For the trials press ''t'' if there''s a target and ''n'' if there isn''t a target');
pause;
close;
rightc = 0;
wrongc = 0;
trial_block=30;
%1st block conjunction with 4 objects; we do 30 trials;
n=12;
t_target4con=[];
t_no_target4con=[];
z=randperm(trial_block);
for i=1:trial_block
    if(z(i) <=(trial_block/2))
      target='y';
    else
      target='n';
    end
    g=treisman(n, 'c', target);
    tic;
    pause;
    temp_t=toc;
    %t=[t, temp_t];
    temp_ans=get(g, 'CurrentCharacter');
    %ans=[ans, temp_ans];
    close
    
    if((strcmp(target, 'y') && strcmp(temp_ans, 't'))) 
        t_target4con=[t_target4con, temp_t];
        rightc = rightc + 1;
    elseif((strcmp(target, 'n') && strcmp(temp_ans, 'n')))
        t_no_target4con=[t_no_target4con, temp_t];
        rightc = rightc + 1;
    else
        wrongc = wrongc + 1;
    end
end

t_targ4con_mean=mean(t_target4con);
t_no_targ4con_mean=mean(t_no_target4con);
next=figure;
text(0.2, 0.7, 'Press any key to begin the next block');
text(0.05, 0.5, 'For the trials press ''t'' if there''s a target and ''n'' if there isn''t a target');
pause;
close;
trial_block=30;


%% Plotting the results of the experiment -- lets figure this out for next time
% % % t_targ16con_mean=mean(t_target16con);
% % % t_no_targ16con_mean=mean(t_no_target16con);
% % % n=[4, 8, 12, 16]';
% % % t_target_pop=[t_targ4pop_mean, t_targ8pop_mean, t_targ12pop_mean, t_targ16pop_mean]';
% % % t_target_con=[t_targ4con_mean, t_targ8con_mean, t_targ12con_mean, t_targ16con_mean]';
% % % t_no_target_pop=[t_no_targ4pop_mean, t_no_targ8pop_mean, t_no_targ12pop_mean, t_no_targ16pop_mean]';
% % % t_no_target_con=[t_no_targ4con_mean, t_no_targ8con_mean, t_no_targ12con_mean, t_no_targ16con_mean]';
% % % [M1, p1]=corrcoef(n, t_target_pop);
% % % M1=M1(1,2);
% % % p1=p1(1,2);
% % % [M2, p2]=corrcoef(n, t_target_con);
% % % M2=M2(1,2);
% % % p2=p2(1,2);
% % % [M3, p3]=corrcoef(n, t_no_target_pop);
% % % M3=M3(1,2);
% % % p3=p3(1,2);
% % % [M4, p4]=corrcoef(n, t_no_target_con);
% % % M4=M4(1,2);
% % % p4=p4(1,2);
% % % sprintf('The correlation coefficient is %0.5g and the p-value is %0.5g for the popout trial when the target was present', M1, p1)
% % % sprintf('The correlation coefficient is %0.5g and the p-value is %0.5g for the conjunction trial when the target was present', M2, p2)
% % % sprintf('The correlation coefficient is %0.5g and the p-value is %0.5g for the popout trial when the target was absent', M3, p3)
% % % sprintf('The correlation coefficient is %0.5g and the p-value is %0.5g for the conjunction trial when the target was absent', M4, p4)
% % % comment='p-values < 0.05 are considered significant';
% % % figure;
% % % plot(n, t_target_pop);
% % % hold on;
% % % plot(n, t_target_con, 'r');
% % % title('Correctly Identified the Presence of Target');
% % % legend('Pop Out', 'Conjunction');
% % % xlabel('Set Size');
% % % ylabel('Mean Reaction Time (sec)');
% % % hold off;
% % % figure;
% % % plot(n, t_no_target_pop);
% % % hold on;
% % % plot(n, t_no_target_con, 'r');
% % % title('Correctly Identified the Absence of Target');
% % % legend('Pop Out', 'Conjunction');
% % % xlabel('Set Size');
% % % ylabel('Mean Reaction Time (sec)');
% % % hold off;
