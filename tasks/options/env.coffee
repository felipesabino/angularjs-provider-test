grunt = require('grunt')

# add general test environment variables here, if needed
devEnvironment =
  NODE_ENV: 'development'

# add local test environment variables here, if needed
#  values added here will overwrite the ones from 'devEnvironment'
testEnvironment = grunt.util._.extend grunt.util._.clone(devEnvironment),
  NODE_ENV: 'test'

# add travis test environment variables here, if needed
#  values added here will overwrite the ones from 'devEnvironment'
travisEnvironment = grunt.util._.extend grunt.util._.clone(devEnvironment),
  NODE_ENV: 'test'

module.exports =
  dev: devEnvironment
  travis: travisEnvironment
  test: testEnvironment
