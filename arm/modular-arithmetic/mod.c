#include <stdio.h>

int main() {
  
  int number, modulus;

  printf("Enter a number: ");
  scanf("%d", &number);

  printf("Enter the modulus: ");
  scanf("%d", &modulus);

  int remainder = number % modulus;
  printf("The remainder is: %d\n", remainder);
 
  return 0;
}
