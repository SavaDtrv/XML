function serializeDocument(doc) {
    var serializer = new XMLSerializer();
    var serializedDocument = serializer.serializeToString(doc);

    return vkbeautify.xml(serializedDocument);
}

function download(filename, content) {
    var file = new File([content], filename);
    var url = URL.createObjectURL(file);

    var tempLinkElement = document.createElement('a');
    tempLinkElement.setAttribute('href', url);
    tempLinkElement.setAttribute('download', filename);

    tempLinkElement.style.display = 'none';
    document.body.appendChild(tempLinkElement);

    tempLinkElement.click();

    document.body.removeChild(tempLinkElement);
    URL.revokeObjectURL(url);
}

function generateXML(){
    var doc = createXMLDocument();

    download('checked.xml', serializeDocument(doc));
};
