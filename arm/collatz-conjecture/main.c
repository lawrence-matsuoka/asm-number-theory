#include <stdio.h>

int main() {

  unsigned int initialNumber;
  printf("Enter an integer: ");
  unsigned int inputNumber = scanf("%d", &initialNumber);

  unsigned int collatzTest = initialNumber;

  while (collatzTest != 1) {
    if (collatzTest % 2 == 1) {
      collatzTest = 3 * collatzTest + 1;
      printf("%d\n", collatzTest);
    } else if (collatzTest % 2 == 0) {
      collatzTest = collatzTest / 2;
      printf("%d\n", collatzTest);
    }
  }

  printf("With initial test value %d", initialNumber);
}
