Parser = require './parser'
fs = require 'fs'
pkginfo = JSON.parse(fs.readFileSync('./package.json', 'utf8'));

class PugInheritance
  constructor: (filename, directory, options) ->
    parser = new Parser filename, directory, options
    @tree = parser.tree
    @files = parser.files
    return this

module.exports = PugInheritance
