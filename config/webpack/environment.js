const { environment } = require('@rails/webpacker')

const typescript =  require('./loaders/typescript')
environment.loaders.prepend('typescript', typescript)

const markdownLoader = {
	test: /\.md$/,
	use: 'raw-loader'
}

environment.loaders.append('md', markdownLoader)

module.exports = environment
