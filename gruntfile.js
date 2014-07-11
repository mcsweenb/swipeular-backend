module.exports = function(grunt) {

  grunt.initConfig({

    /* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/

    clean: {
      dev: {
        dist: "build/"
      }
      , prod: {
        dist: "dist/"
      }
    }

    /* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/

    , coffee: {
      dev: {
        expand: true
        , flatten: false
        , cwd: "src"
        , src: "**/*.coffee"
        , dest: "build"
        , ext: ".js"
        , options: {
          bare: true
        }
      }
      , prod: {
        expand: true
        , flatten: false
        , cwd: "src"
        , src: "**/*.coffee"
        , dest: "dist"
        , ext: ".js"
        , options: {
          bare: true
        }
      }
    }

    /* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/

     
    , uglify: {
      prod: {
        expand: true
        , src: '**/*.js'
        , dest: 'dist'
        , cwd: 'dist'
      }
    }

    

    /* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/

    , watch: {

      all: {
        files: [
          'src/**/*'
        ]
        , tasks: 'build'
      }
    }

    /* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/

  });

  grunt.loadNpmTasks('grunt-contrib');


  grunt.registerTask('build', ['clean:dev', 'coffee:dev']);
  grunt.registerTask('build-dist', ['clean:prod', 'coffee:prod', 'uglify:prod']);
  grunt.registerTask('default', 'build');


};
