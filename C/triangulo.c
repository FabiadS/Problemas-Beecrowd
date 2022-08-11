#include <stdio.h>

int main()
{

  float A, B, C, perimetro, area;

  scanf("%f %f %f", &A, &B, &C);

  if ((A + B > C) and (A + C > B) and (B + C > A))
  {
    perimetro = A + B + C;
    printf("Perimetro = %.1f", perimetro);
  }
  else
  {
    area = ((A + B) * C) / 2;
    printf("Area = %.1f", area);
  }

  return 0;
}