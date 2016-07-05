%% plot lines between entry and exit points

data = load('entry_exit_points_coords.txt');
[m, n] = size(data);

figure
hold on
for i = 1:m
    x = [data(i, 1), data(i, 3)];
    y = [data(i, 2), data(i, 4)];
    plot(x(1),y(1), 'go');
    plot(x(2),y(2), 'rx');
    plot(x,y,'b');
end
hold off