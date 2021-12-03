#include <stdio.h>

int matriculaResta(long long m){
    long long mi,md;
    int resta;
    
    mi=m/100000;
    md=m-(mi*100000);
    resta = (int) mi-md;
    return resta;
}