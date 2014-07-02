fast_align: src/fast_align.cc src/ttables.h src/da.h src/corpus.h
	g++ -Werror -Wall -O3 -I. src/fast_align.cc -o $@

static: src/fast_align.cc src/ttables.h src/da.h src/corpus.h
	g++ -static -Werror -Wall -O3 -I. src/fast_align.cc -o fast_align
	strip -s fast_align

clean:
	rm -f fast_align
