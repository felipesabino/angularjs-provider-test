module.exports =
  compile:
    files: [
      expand: true
      cwd: 'src'
      src: ['{,**/}*.coffee', '!**/node_modules/**']
      dest: 'dist'
      ext: '.js'
    ]
    options:
      sourceMap: true
      bare: true
