#include <stdio.h>

int main()

{
  double A, B, C, a_tri, a_circ, a_trap, a_quad, a_ret;

  scanf("%lf %lf %lf", &A, &B, &C);
  a_tri = ((A * C) / 2);
  a_circ = 3.14159 * C * C;
  a_trap = ((A + B) * C) / 2;
  a_quad = B * B;
  a_ret = A * B;

  printf("TRIANGULO: %.3lf\n", a_tri);
  printf("CIRCULO: %.3lf\n", a_circ);
  printf("TRAPEZIO: %.3lf\n", a_trap);
  printf("QUADRADO: %.3lf\n", a_quad);
  printf("RETANGULO: %.3lf\n", a_ret);

  return 0;
}