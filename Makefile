CFALGS=-Wall -O0 -g

clean:
	rm -f test
	rm -f tur tur.c tur.o
	rm -f file1 file2

all: ex1

ex1:
	rm -f ex1




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
