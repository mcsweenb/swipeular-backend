## Install Node Dependencies

Install Node dependencies:

	npm install


## Install MongoDB

Install MongoDB via Homebrew:

	brew install mongodb
	

## Start MongoDB

Start an instance of the MongoDB:
	
	mongod


## Compiling for Development

Run `grunt watch` to observe changes made to any `.coffee` files in the `src` directory. When a change occurs, the `build` directory will be recreated, and all coffeescript files will be compiled to this folder.


## Building for Production

Run `grunt build-dist` to compile and uglify all `.coffee` files in the `src`, placing the resulting files in `dist`.
