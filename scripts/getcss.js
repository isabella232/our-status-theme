const download = require('download-file')

const url = 'https://status.im/css/main.min.css'

const options = {
    directory: './assets/css',
    filename: 'main.min.css',
}

download(url, options, function(err){
    if (err) { throw err }
    console.log('SUCCESS')
}) 
