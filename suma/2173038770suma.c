#include <stdio.h>

int matriculaSuma(long long m){
    int suma=0;
    while(m!=0){
        suma+=m%10;
        m/=10;
    }
    return suma;
}