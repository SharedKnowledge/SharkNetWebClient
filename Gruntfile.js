module.exports = function(grunt) {
  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json'),

    watch: {
      app: {
        files: ['src/coffee/*.coffee', 'src/sass/*.scss'],
        tasks: ['default']
      }
    },

    coffee: {
      app: {
        expand: true,
        flatten: true,
        cwd: 'src/coffee',
        src: ['*.coffee'],
        dest: 'build/js',
        ext: '.js'
      }
    },

    sass: {
      options: {
        sourcemap: 'none'
      },

      app: {
        expand: true,
        cwd: 'src/sass',
        src: ['*.scss'],
        dest: 'build/css',
        ext: '.css'
      }
    }
  });

  grunt.loadNpmTasks('grunt-contrib-watch');
  grunt.loadNpmTasks('grunt-contrib-coffee');
  grunt.loadNpmTasks('grunt-contrib-sass');
  grunt.loadNpmTasks('grunt-coffeelint');

  grunt.registerTask('default', ['coffee', 'sass']);
};
