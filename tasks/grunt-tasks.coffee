module.exports = (grunt) ->

  grunt.registerTask 'test', [
    'env:test'
    'clean'
    'coffeelint'
    'coffee'
    'mocha'
  ]

  grunt.registerTask 'travis', [
    'env:travis'
    'clean'
    'coffeelint'
    'coffee'
    'mocha'
  ]
