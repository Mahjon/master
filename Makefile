hello:hello.o main.o
	gcc $^ -o hello
%.o:%.c
	gcc -c $< -o $@ 
.PHONY:clean run
clean:
	rm -rf *.o hello *.*.swp
var=$(wildcard ./*.o)
var1=$(notdir $(var))
var2=$(dir $(var))
#var3=$(patsubst %.o,%.exe,$(var1))
var3=$(var1:%.o=%.deb)
name:=a b c d
var4:=$(foreach n,$(name),$(n).o)
run:
#	@echo $(var)
#	@echo $(var2)
	@echo $(var1)
	@echo $(var3)
	@echo $(var4)
