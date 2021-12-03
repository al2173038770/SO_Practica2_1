echo "Creacion de archivos objeto"
    gcc -c 2173038770imprime.c -o 2173038770imprime.o && gcc -c 2173038770suma.c -o 2173038770suma.o && gcc -c 2173038770resta.c -o 2173038770resta.o


echo "Creacion de Share Object"
echo "gcc -shared 2173038770*.o -o lib2173038770*.so"
    gcc -shared 2173038770imprime.o 2173038770suma.o 2173038770resta.o -o lib2173038770funciones.so


echo "Compila el archivo main.c con una carga en tiempo de ejecucion del objeto compartido en el directorio indicado con la bandera -l2173038770funciones"
echo "gcc -L/home/arturo/workspace/uam/SO/practica2_1/entrega/todo/ -Wall -o mainSOexe main.c -l2173038770imprime"
	gcc -L/home/arturo/workspace/uam/SO/practica2_1/entrega/todo/ -Wall -o mainSOexe main.c -l2173038770funciones
    

echo "rm *.o *.so"

echo "Exṕortamos la variable de ambiente "
echo "export LD_LIBRARY_PATH=/home/arturo/workspace/uam/SO/practica2_1/entrega/: $LD_LIBRARY_PATH"
	export LD_LIBRARY_PATH=/home/arturo/workspace/uam/SO/practica2_1/entrega/todo/:$LD_LIBRARY_PATH

echo "Ejecucion con carga de la shared object"
    ./mainSOexe