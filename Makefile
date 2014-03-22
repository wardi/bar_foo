

slides.pdf: bar_foo.rst slides.style background.pdf
	rst2pdf bar_foo.rst -b1 -s slides.style

bar_foo.rst: bar_foo.ipynb rst.py
	python rst.py "$<" bar_foo.rst
