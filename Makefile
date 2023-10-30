all: helloworld.pex

src/helloworld.cpython-311-x86_64-linux-gnu.so:
	cythonize -a -i helloworld.pyx 

helloworld.pex: src/helloworld.cpython-311-x86_64-linux-gnu.so
	pex -D src -m helloworld:entrypoint -o helloworld.pex

clean:
	rm -v \
		*.c \
		*.so