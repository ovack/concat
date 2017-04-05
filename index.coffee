_ = require 'lodash'
Promise = require 'bluebird'
fs = require 'fs'
fse = Promise.promisifyAll(require 'fs-extra')
path = require 'path'
conf = require './conf'

scan = (filePath) ->
  files = fs.readdirSync filePath
  _.forEach files, (file) ->
    scanFilePath = path.join filePath, file
    stat = fs.statSync scanFilePath
    if stat.isDirectory()
      scan path.join scanFilePath, '/'
    else
      operate scanFilePath, path.join conf.destinationPath, file

operate = (sourceFilePath, destinationPath) ->
  if conf.mode is 'move'
    fse
      .moveAsync sourceFilePath, destinationPath
      .then () ->
        console.log destinationPath+ "移动完成"
  else
    fse
      .copyAsync sourceFilePath, destinationPath
      .then () ->
        console.log destinationPath+ "复制完成"
    
scan conf.sourceFilePath
