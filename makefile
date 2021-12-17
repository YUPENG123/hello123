src=$(wildcard ./src/*.c)
obj=$(patsubst ./src/%.c,./obj/%.o,$(src))

incpath= -I ./inc
myArgs=   -Wall -g

ALL:a.out

a.out:$(obj)
	gcc $^ -o $@ $(myArgs)

$(obj):./obj/%.o:./src/%.c
	gcc -c  $< -o $@ $(myArgs) $(incpath)

clean:
	-rm -rf $(obj) a.out

.PHONY: clean ALL





