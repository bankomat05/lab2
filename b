#include <stdio.h>
#include <math.h>

int main()
{
    double a, b, h, x, d, S;

    printf(" a = "); scanf("%lf", &a);
    printf(" b = "); scanf("%lf", &b);
    printf(" h = "); scanf("%lf", &h);
    printf(" d = "); scanf("%lf", &d);

    for (x = a; x <= b; x += h)
    {
        double y;
        S = 0.0;
        int k = 1;
        do {
            y = k * pow(x, k);
            if(fabs(y) > d)
            {
                S += y;
                k++;
            }
        } while (fabs(y) > d);
        printf("x=%lf\t", x);
        printf("y=%lf\n", S);
    }
    return 0;
}
