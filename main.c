#include <stdio.h>
#include <assert.h>

int prog2(int i, int j, int *k, int *l, int a[6]);

int main() {
	int k = 10;
	int l = 0, res;
	int a[6] = {7, 0, 8, 0, 3, 2};

	res = prog2(9, 6, &k, &l, a);

	if(res != 9-6+3) {
		printf("return value should be=%d; got=%d\n", 9-6+3, res);
      		assert(0);
	}
	
	if(k != 100) {
		printf("k*10: expected=100, got=%d\n", k);
         	assert(0);
	}
	if(l != 20) {
                printf("array sum: expected=20, got=%d\n", l);
                assert(0);
        }
			
	printf("i-j+3= %d\n", res);
	printf("k*10= %d\n", k);
	printf("array sum= %d\n\n", l);

	a[1] = l;
	res = prog2(17, 11, &k, &l, a);
	if(res != 17-11+3) {
                printf("return value should be=%d; got=%d\n", 17-11+3, res);
                assert(0);
        }
        if(k != 100*10) {
                printf("k*10*10: expected=1000, got=%d\n", k);
                assert(0);
        }
        if(l != 20*2) {
                printf("array sum 2: expected=40, got=%d\n", l);
                assert(0);
        }
	
	printf("i-j+3= %d\n", res);
        printf("k*10*10= %d\n", k);
        printf("array sum 2= %d\n\n", l);
	
	return 0;
}
