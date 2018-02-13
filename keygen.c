#include <stdio.h>
#include <string.h>
#include <stdint.h>
#include <ctype.h>

#define HASH_SIZE 32
#define MAX_USER_LENGTH 128

char* hash_function(char*);

uint32_t sum_string(char* string, int size) {
  int sum = 0;
  for (int i = 0; string[i] != '\0' && i < size; i++) {
    sum += string[i];
  }
  return sum;
}

int main(int argc, char const *argv[])
{
  char str_to_hash[13];

  if (argc != 2) {
    printf("Usage: %s <username>\n", argv[0]);
    return 1;
  }

  uint32_t str_sum = sum_string((char*) argv[1], MAX_USER_LENGTH);
  str_sum = (0xff - str_sum) * 0x133729 * 0x3122;

  snprintf(str_to_hash, HASH_SIZE, "%X", str_sum);
  printf("sum: %s\n", str_to_hash);

  char* lol = hash_function(str_to_hash);

  for (int i = 0; lol[i] != '\0'; i++) {
    lol[i] = toupper(lol[i]);
  }

  printf("%s\n", lol);

  return 0;
}