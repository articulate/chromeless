const { default: Chromeless } = require('@articulate/chromeless')

const chromelessPng = new Chromeless({ remote: true, debug: true })

chromelessPng
  .goto('https://cdn.articulate.zone/review/items/nDMKK65b3tasgox5/_1n0airGgpKrnsWe.html')
  .screenshot()
  .end()
  .then(console.log)
  .catch(err => {
    console.error(err)
    chromelessPng.end()
    console.error('ended chromeless png')
  })

const chromelessPdf = new Chromeless({ remote: true, debug: true })

chromelessPdf
  .goto('https://cdn.articulate.zone/review/items/nDMKK65b3tasgox5/_1n0airGgpKrnsWe.html')
  .pdf()
  .end()
  .then(console.log)
  .catch(err => {
    console.error(err)
    chromelessPdf.end()
    console.error('ended chromeless pdf')
  })
