format: ./src
	find . -type d -path ./include -prune -o -iname '*.h' -o -iname '*.cpp' | xargs clang-format -i