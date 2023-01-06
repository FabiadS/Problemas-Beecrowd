#include <stdio.h>

int main()
{

  int X, Y;
  scanf("%d", &X);
  scanf("%d", &Y);
  while (X != Y)
  {
    if (X > Y)
      printf("Decrescente\n");
    else
      printf("Crescente\n");

    scanf("%d", &X);
    scanf("%d", &Y);
  }

  return 0;
}