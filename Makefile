CFALGS=-Wall -O0 -g

clean:
	rm -f test
	rm -f tur tur.c tur.o
	rm -f file1 file2

all: ex1 ex2 ex.3

ex1: ex1.c
	cc ex1.o -o ex1
ex1.c:
	cc -c ex1.c -o ex.o

ex2: ex2.c
	cc ex2.o -o ex2

ex1.c:
	cc -c ex2.c -o ex2.o

ex3: ex3.c
	cc ex3.o -o ex3
ex1.c:
	cc -c ex3.c -o ex3.o

#from https://makefiletutorial.com/#multiple-targets
hello:
	echo "hello world"

tur: tur.o
	cc  tur.o -o tur #runs third

tur.o: tur.c
	cc -c tur.c -o tur.o

tur.c:
	echo "int main () { return 0;}" > tur.c

file1: file2
	echo "target file1 ran"
	touch file1
file2:
	echo "target file2 ran"
	touch file2

files = file1 file2
some_file: $(files)
	echo "look at this varieble" $(files)
	touch some_file
