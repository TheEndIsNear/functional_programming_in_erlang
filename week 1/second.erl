-module(second).
-export([hypotenuse/2,perimeter/2,area/2]).

% caluculate the hypotenuse of a right-angled triangle
% C^2 = A^2 + B^2
hypotenuse(A, B) ->
    math:sqrt(first:square(A) + first:square(B)).

% calculate the perimeter of a right-angled triangle
% perimeter = A + B + C (hypotenuse(A,B))
perimeter(A, B) ->
    A + B + hypotenuse(A, B).

% calculate the area of a right-angled triangle
% area = 1/2 * (A * B)
area(A, B) ->
    0.5 * (A * B).