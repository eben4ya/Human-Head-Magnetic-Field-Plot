% Kode Octave untuk Visualisasi Medan Magnet dengan representasi tengkorak, otot, dan otak

% Parameter ruang
x = linspace(-10, 10, 20);
y = linspace(-10, 10, 20);
z = linspace(-10, 10, 10);
[X, Y, Z] = meshgrid(x, y, z);

% Asumsi medan magnet uniform dan hanya memiliki komponen z
Bx = zeros(size(X));
By = zeros(size(Y));
Bz = ones(size(Z));

% Membuat plot medan magnet
figure;
quiver3(X, Y, Z, Bx, By, Bz, 'LineWidth', 1.5);
hold on;

% Menandai lokasi 'fixed field'
plot3(0, 0, 0, 'rs', 'MarkerSize', 10, 'MarkerFaceColor', 'r');
text(0, 0, 0, 'Fixed Field', 'VerticalAlignment', 'bottom', 'HorizontalAlignment', 'right');

% Tambahkan representasi tengkorak, otot, dan otak
% Menggunakan kuboid transparan untuk representasi

% Tengkorak
skull_x = [-7 -7 7 7 -7 -7 7 7];
skull_y = [-7 7 7 -7 -7 7 7 -7];
skull_z = [9 9 9 9 11 11 11 11];
patch('Vertices', [skull_x' skull_y' skull_z'], 'Faces', [1 2 3 4; 5 6 7 8; 1 2 6 5; 2 3 7 6; 3 4 8 7; 4 1 5 8], ...
       'FaceColor', 'white', 'FaceAlpha', 0.5, 'EdgeColor', 'black');
text(0, 0, 11, 'Skull', 'HorizontalAlignment', 'center', 'VerticalAlignment', 'bottom');

% Otot
muscle_x = [-7 -7 0 0 -7 -7 0 0];
muscle_y = [-7 7 7 -7 -7 7 7 -7];
muscle_z = [1 1 1 1 3 3 3 3];
patch('Vertices', [muscle_x' muscle_y' muscle_z'], 'Faces', [1 2 3 4; 5 6 7 8; 1 2 6 5; 2 3 7 6; 3 4 8 7; 4 1 5 8], ...
       'FaceColor', 'red', 'FaceAlpha', 0.5, 'EdgeColor', 'black');
text(-3.5, 0, 3, 'Muscle', 'HorizontalAlignment', 'center', 'VerticalAlignment', 'bottom');

% Otak
brain_x = [0 0 7 7 0 0 7 7];
brain_y = [-7 7 7 -7 -7 7 7 -7];
brain_z = [1 1 1 1 3 3 3 3];
patch('Vertices', [brain_x' brain_y' brain_z'], 'Faces', [1 2 3 4; 5 6 7 8; 1 2 6 5; 2 3 7 6; 3 4 8 7; 4 1 5 8], ...
       'FaceColor', 'blue', 'FaceAlpha', 0.5, 'EdgeColor', 'black');
text(3.5, 0, 3, 'Brain', 'HorizontalAlignment', 'center', 'VerticalAlignment', 'bottom');

% Mengatur tampilan plot
axis equal;
xlabel('x-axis');
ylabel('y-axis');
zlabel('z-axis');
title('Visualisasi Medan Magnet dengan Representasi Tengkorak, Otot, dan Otak');
grid on;
hold off;

