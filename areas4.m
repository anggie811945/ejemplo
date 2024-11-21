% Definir las variables simbólicas
syms u v

% Definir la parametrización de la superficie r(u, v)
% Ejemplo de superficie: un paraboloide z = x^2 + y^2, donde x = u, y = v
x = u * cos(v);
y = u * sin(v);
z = v;

% La función de la superficie r(u, v)
r = [x; y; z];

% Calcular las derivadas parciales de r respecto a u y v
dr_du = diff(r, u); % Derivada parcial de r con respecto a u
dr_dv = diff(r, v); % Derivada parcial de r con respecto a v

% Calcular el producto cruzado de las derivadas parciales
producto_cruzado = cross(dr_du, dr_dv);
disp('producto_cruzado');
disp(producto_cruzado);

% Calcular el módulo del producto cruzado
norma_producto_cruzado = sqrt(sum(producto_cruzado.^2));
disp('norma_producto_cruzado');
disp(norma_producto_cruzado);

% Definir los límites de integración para u y v
u_min = 0; u_max = 1;  % Límites de u
v_min = 0; v_max = 1;  % Límites de v

% Calcular el área mediante la integración doble
area = int(int(norma_producto_cruzado, u, u_min, u_max), v, v_min, v_max);

% Mostrar el resultado
disp('Área de la superficie:');
disp(area);