#include "stdio.h"
int main(int argc, char** argv)
{
  struct a{
    union {
      int flags;
      struct {
        int f1:1;
        int f2:1;
        int f3:1;
        int f4:1;
        int f5:1;
        int f6:1;
        int f7:1;
        int f8:1;
        char c:8;
      };
    };
  };
  struct a v;
  v.flags=0;
  v.f1=1;
  v.f6=1;
  printf("flags = %X\n", v.flags);
}
