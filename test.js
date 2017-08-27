const { default: Chromeless } = require('./dist/src')

for (var i=0; i<100; i++) {
  new Chromeless({ remote: true })
    .goto('http://html5zombo.com')
    .screenshot()
    .end()
    .then(console.log)
    .catch(console.error)

  new Chromeless({ remote: true })
    .goto('http://html5zombo.com')
    .pdf()
    .end()
    .then(console.log)
    .catch(console.error)
}
