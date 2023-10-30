all: helloworld.pex

venv:
	python3.11 -m venv venv
	venv/bin/pip install --upgrade pip wheel cython pex

src/helloworld.cpython-311-x86_64-linux-gnu.so: venv
	mkdir -p src
	venv/bin/cythonize -a -i helloworld.pyx

helloworld.pex: src/helloworld.cpython-311-x86_64-linux-gnu.so
	venv/bin/pex -D src -m helloworld:entrypoint -o helloworld.pex

clean:
	rm -vf \
		*.pex \
		*.so \
		src/*.so
