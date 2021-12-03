echo -e "\n holaprintlibrary.o: holaprintlibrary.c "
echo -e "\n gcc -c 2173038770suma.c -o 2173038770suma.o"
    gcc -c 2173038770suma.c -o 2173038770suma.o

echo -e "\n libprintlibrary.so: holaprintlibrary.o"
echo -e "gcc -shared 2173038770suma.o -o lib2173038770suma.so"
    gcc -shared 2173038770suma.o -o lib2173038770suma.so

echo -e "\n holaSOexe: holamainlibrary.o \n"
echo -e "gcc -L/home/arturo/workspace/uam/SO/practica2_1/entrega/suma/ -Wall -o mainSOexe main.c -l2173038770suma"
	gcc -L/home/arturo/workspace/uam/SO/practica2_1/entrega/suma/ -Wall -o mainSOexe main.c -l2173038770suma

echo -e "\n to clean: rm *.o *.so"

echo -e "\n export LD_LIBRARY_PATH=/home/arturo/workspace/uam/SO/practica2_1/entrega/suma/:$LD_LIBRARY_PATH "
	export LD_LIBRARY_PATH=/home/arturo/workspace/uam/SO/practica2_1/entrega/suma/:$LD_LIBRARY_PATH

echo -e "\n Ejecucion con carga de la shared object"
    ./mainSOexe