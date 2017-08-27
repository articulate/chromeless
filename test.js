const { default: Chromeless } = require('./dist/src')

new Chromeless({ remote: true })
  .goto('http://html5zombo.com')
  .screenshot()
  .then(console.log)
  .catch(console.error)

new Chromeless({ remote: true })
  .goto('http://html5zombo.com')
  .pdf()
  .then(console.log)
  .catch(console.error)
