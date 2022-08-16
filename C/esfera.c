#include <stdio.h>
#include <math.h>

int main()

{
  double R, pi, VOLUME;

  pi = 3.14159;

  scanf("%lf", &R);
  VOLUME = ((4.0 / 3) * pi * (pow(R, 3)));

  printf("VOLUME = %.3f\n", VOLUME);

  return 0;
}