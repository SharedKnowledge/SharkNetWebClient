module.exports = function(grunt) {
  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json'),

    watch: {
      app: {
        files: ['src/coffee/*.coffee'],
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
    }
  });

  grunt.loadNpmTasks('grunt-contrib-watch');
  grunt.loadNpmTasks('grunt-contrib-coffee');
  grunt.loadNpmTasks('grunt-coffeelint');

  grunt.registerTask('default', ['coffee']);
};
