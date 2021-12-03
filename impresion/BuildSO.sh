echo -e "\n holaprintlibrary.o: holaprintlibrary.c "
echo -e "\n gcc -c 2173038770imprime.c -o 2173038770imprime.o"
    gcc -c 2173038770imprime.c -o 2173038770imprime.o

echo -e "\n libprintlibrary.so: holaprintlibrary.o"
echo -e "gcc -shared 2173038770imprime.o -o lib2173038770imprime.so"
    gcc -shared 2173038770imprime.o -o lib2173038770imprime.so

echo -e "\n holaSOexe: holamainlibrary.o \n"
echo -e "gcc -L/home/arturo/workspace/uam/SO/practica2_1/entrega/impresion/ -Wall -o mainSOexe main.c -l2173038770imprime"
	gcc -L/home/arturo/workspace/uam/SO/practica2_1/entrega/impresion/ -Wall -o mainSOexe main.c -l2173038770imprime

echo -e "\n to clean: rm *.o *.so"

echo -e "\n export LD_LIBRARY_PATH=/home/arturo/workspace/uam/SO/practica2_1/entrega/impresion/:$LD_LIBRARY_PATH "
	export LD_LIBRARY_PATH=/home/arturo/workspace/uam/SO/practica2_1/entrega/impresion/:$LD_LIBRARY_PATH

echo -e "\n Ejecucion con carga de la shared object"
    ./mainSOexe