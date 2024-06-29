BUILD_DIR := build

jlox: generate_ast
	@ $(MAKE) -f util/java.make DIR=java PACKAGE=lox

generate_ast:
	@ $(MAKE) -f util/java.make DIR=java PACKAGE=tool
	@ java -cp build/java com.craftinginterpreters.tool.GenerateAst \
		java/com/craftinginterpreters/lox

clean:
	@ rm -rf $(BUILD_DIR)

.PHONY: clean jlox