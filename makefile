
image:image.c image.h
	gcc -g image.c -o image -lm
pthreads: image_pthread.c image.h
	gcc -g image_pthread.c -o image -lm -lpthread
openmp: image_omp.c image.h
	gcc -g image_omp.c -o image -lm -fopenmp
clean:
	rm -f image output.png