python_version_full := $(wordlist 2,4,$(subst ., ,$(shell python3 --version 2>&1)))
python_version_major := $(word 1,${python_version_full})
python_version_minor := $(word 2,${python_version_full})

my_cmd := ${my_cmd.python.${python_version_major}}
bold := $(shell tput bold)
red := $(shell tput setaf 1)
green := $(shell tput setaf 2)
cyan := $(shell tput setaf 6)

.ONESHELL:
all:
ifneq (${python_version_major}, 3)
	@printf "$(bold)$(red)ERROR: Please use python3 (preferably with a venv)\n"
	exit
endif
ifneq (${python_version_minor}, 7)
	@printf "$(bold)$(red)ERROR: Please use python3.7 (preferably with a venv)\n"
	exit
endif
	@python3 src/create_math.py
	@printf "$(bold)$(green)The generated cairo library files have been installed \
	in your default python package path in the \"SafeMath\" directory.\n\
	$(cyan)They can be imported in Cairo with \"from SafeMath.uint8_math import uint8_add\"\n\n"

.PHONY: all

