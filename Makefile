BIN_DIR ?= ./node_modules/.bin

BUILD_SRC ?= 'src'
BUILD_LIB ?= 'lib'
PRESETS ?= '--presets=node5,stage-0'

#
# BABEL BUILD lib
#

build:
	@$(BIN_DIR)/babel $(PRESETS) $(BUILD_SRC) -d $(BUILD_LIB)

build-with-sources:
	@$(BIN_DIR)/babel $(PRESETS) $(BUILD_SRC) -s -d $(BUILD_LIB)

build-and-watch:
	@$(BIN_DIR)/babel $(PRESETS) $(BUILD_SRC) -w -d $(BUILD_LIB)

build-with-sources-and-watch:
	@$(BIN_DIR)/babel $(PRESETS) $(BUILD_SRC) -w -s -d $(BUILD_LIB)

clean-build:
	@rm -rf lib
