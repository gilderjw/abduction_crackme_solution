#include <stdio.h>
#include <string.h>
#include <stdint.h>
#include <ctype.h>

#define HASH_SIZE 32
#define MAX_USER_LENGTH 128

char* _interesting_hash_stuff(char*);

int main(int argc, char const *argv[])
{
  if (argc != 2) {
    printf("Usage: %s <username>\n", argv[0]);
    return 1;
  }

  char *lol = interesting_hash_stuff((char*) argv[1]);

  printf("%s\n", lol);

  return 0;
}