const { default: Chromeless } = require('@articulate/chromeless')

new Chromeless({ remote: true })
  .goto('https://html5zombo.com')
  .screenshot()
  .end()
  .then(console.log)

new Chromeless({ remote: true })
  .goto('https://html5zombo.com')
  .pdf()
  .end()
  .then(console.log)
