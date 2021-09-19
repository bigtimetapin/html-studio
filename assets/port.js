/*! https://github.com/tsayen/dom-to-image */
app.ports.dom2ImageEventSender.subscribe(function (message) {
    domtoimage.toJpeg(document.getElementById('html-studio-id'), {quality: 1.00})
        .then(function (dataUrl) {
            var link = document.createElement('a');
            link.download = message + '.jpeg';
            link.href = dataUrl;
            link.click();
        });
});
