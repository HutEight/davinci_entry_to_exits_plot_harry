%% plot lines between entry and exit points

data = load('entry_exit_points_coords.txt');
[m, n] = size(data);

figure
hold on
axis([-0.07 0.07 -0.07 0.07])
axis ij
for i = 1:m
    score = data(i);    
    x = [data(i, 2), data(i, 4)];
    y = [data(i, 3), data(i, 5)];
    plot(x(1),y(1), 'bo');
    plot(x(2),y(2), 'rx');
    if score >= 742
        plot(x,y,'g');
    else
        plot(x,y,'y');
    end
end
hold off