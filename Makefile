BUILD_DIR := build

jlox: 
	@ $(MAKE) -f util/java.make DIR=java PACKAGE=lox

clean:
	@ rm -rf $(BUILD_DIR)

.PHONY: clean jlox