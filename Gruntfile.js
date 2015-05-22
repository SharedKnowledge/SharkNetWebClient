module.exports = function(grunt) {
  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json'),

    watch: {
      app: {
        files: ['src/**/*.coffee', 'src/**/*.scss', 'src/*.haml'],
        tasks: ['build']
      }
    },

    coffee: {
      build: {
        files: [
          {
            expand: true,
            flatten: true,
            cwd: 'src/coffee/partials',
            src: ['*.coffee'],
            dest: 'build/js/partials',
            ext: '.js'
          },

          {
            expand: true,
            flatten: true,
            cwd: 'src/coffee',
            src: ['*.coffee'],
            dest: 'build/js',
            ext: '.js'
          }
        ]
      }
    },

    sass: {
      options: {
        sourcemap: 'none'
      },

      build: {
        files: [
          {
            expand: true,
            cwd: 'src/sass/shared',
            src: ['*.scss'],
            dest: 'build/css/shared',
            ext: '.css'
          }
        ]
      }
    },

    haml: {
      build: {
        expand: true,
        cwd: 'src',
        src: ['*.haml'],
        dest: 'build',
        ext: '.html'
      }
    },

    concat: {
      options: { separator: ';' },
      build: {
        src: [
          'bower_components/jquery/dist/jquery.min.js'
        ],

        dest: 'build/js/libs.js'
      },
    },
  });

  grunt.loadNpmTasks('grunt-contrib-watch');
  grunt.loadNpmTasks('grunt-contrib-coffee');
  grunt.loadNpmTasks('grunt-contrib-sass');
  grunt.loadNpmTasks('grunt-contrib-haml');
  grunt.loadNpmTasks('grunt-contrib-concat');
  grunt.loadNpmTasks('grunt-coffeelint');

  grunt.registerTask('build', ['coffee', 'sass', 'haml', 'concat']);
};
