#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main()
{

  double x1, y1, x2, y2;
  double C, Distancia;

  scanf("%lf %lf", &x1, &y1);
  scanf("%lf %lf", &x2, &y2);

  C = (pow(x2 - x1, 2) + pow(y2 - y1, 2));
  Distancia = sqrt(C);

  printf("%.4lf\n", Distancia);

  return 0;
}