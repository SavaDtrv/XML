function createXMLDocument() {
    const NAMESPACE = "http://example.com/XMLProject";
    const NAMESPACE1 = "http://www.w3.org/2001/XMLSchema-instance";
    const NAMESPACE2 = "http://example.com/XMLProject CheckedByThePolice.xsd";

    var documentImplementation = document.implementation;

    var xmlDoc = documentImplementation.createDocument(null, null);

    var xmlProcInstruction = xmlDoc.createProcessingInstruction('xml', 'version="1.0" encoding="UTF-8"');
    xmlDoc.appendChild(xmlProcInstruction);

    var xmlElement = xmlDoc.createElementNS(NAMESPACE, 'people');
    xmlDoc.appendChild(xmlElement);
    xmlElement.setAttributeNS(NAMESPACE1, "xsi:schemaLocation", NAMESPACE2);

    var newPerson = xmlDoc.createElementNS(NAMESPACE, 'person');
    xmlElement.appendChild(newPerson);
    newPerson.setAttribute('id_number', "682593234");
    newPerson.setAttribute('id_date_of_issue', "2008-12-15");
    newPerson.setAttribute('id_expiry', "2018-12-15");
    newPerson.setAttribute('id_issued_by', "МВР Пловдив");
    newPerson.setAttribute('signature', "true");

    var firstName = xmlDoc.createElementNS(NAMESPACE, 'first_name');
    newPerson.appendChild(firstName);
    var nameAsText = xmlDoc.createTextNode("Петър");
    firstName.appendChild(nameAsText);

    var fathersName = xmlDoc.createElementNS(NAMESPACE, 'fathers_name');
    newPerson.appendChild(fathersName);
    var nameAsText_1 = xmlDoc.createTextNode("Георгиев");
    fathersName.appendChild(nameAsText_1);

    var surname = xmlDoc.createElementNS(NAMESPACE, 'surname');
    newPerson.appendChild(surname);
    var nameAsText_2 = xmlDoc.createTextNode("Петров");
    surname.appendChild(nameAsText_2);

    var personalNO = xmlDoc.createElementNS(NAMESPACE, 'personal_NO');
    newPerson.appendChild(personalNO);
    var nameAsText_3 = xmlDoc.createTextNode("9011246532");
    personalNO.appendChild(nameAsText_3);

    var sex = xmlDoc.createElementNS(NAMESPACE, 'sex');
    newPerson.appendChild(sex);
    var nameAsText_4 = xmlDoc.createTextNode("Мъж");
    sex.appendChild(nameAsText_4);

    var eyeColor = xmlDoc.createElementNS(NAMESPACE, 'eyes_color');
    newPerson.appendChild(eyeColor);
    var nameAsText_5 = xmlDoc.createTextNode("Кафяви");
    eyeColor.appendChild(nameAsText_5);

    var height = xmlDoc.createElementNS(NAMESPACE, 'height');
    newPerson.appendChild(height);
    var nameAsText_6 = xmlDoc.createTextNode("178");
    height.appendChild(nameAsText_6);

    var dateOfBirth = xmlDoc.createElementNS(NAMESPACE, 'date_of_birth');
    newPerson.appendChild(dateOfBirth);
    var nameAsText_7 = xmlDoc.createTextNode("1990-11-24");
    dateOfBirth.appendChild(nameAsText_7);

    var nationality = xmlDoc.createElementNS(NAMESPACE, 'nationality');
    newPerson.appendChild(nationality);
    var nameAsText_8 = xmlDoc.createTextNode("България");
    nationality.appendChild(nameAsText_8);

    var placeOfBirth = xmlDoc.createElementNS(NAMESPACE, 'place_of_birth');
    newPerson.appendChild(placeOfBirth);
    var nameAsText_9 = xmlDoc.createTextNode("Пловдив");
    placeOfBirth.appendChild(nameAsText_9);

    var residence = xmlDoc.createElementNS(NAMESPACE, 'residence');
    newPerson.appendChild(residence);
    var nameAsText_10 = xmlDoc.createTextNode("Пловдив");
    residence.appendChild(nameAsText_10);

    var morePersonInfo = xmlDoc.createElementNS(NAMESPACE, 'more_person_info');
    newPerson.appendChild(morePersonInfo);

    var phone = xmlDoc.createElementNS(NAMESPACE, 'phone');
    morePersonInfo.appendChild(phone);
    var nameAsText_11 = xmlDoc.createTextNode("0892322265");
    phone.appendChild(nameAsText_11);

    var email = xmlDoc.createElementNS(NAMESPACE, 'email');
    morePersonInfo.appendChild(email);
    var nameAsText_12 = xmlDoc.createTextNode("petar-petrov@gmail.com");
    email.appendChild(nameAsText_12);

    var closePerson = xmlDoc.createElementNS(NAMESPACE, 'close_person');
    newPerson.appendChild(closePerson);

    var phone_1 = xmlDoc.createElementNS(NAMESPACE, 'phone');
    closePerson.appendChild(phone_1);
    var nameAsText_13 = xmlDoc.createTextNode("0892323266");
    phone_1.appendChild(nameAsText_13);

    var email_1 = xmlDoc.createElementNS(NAMESPACE, 'email');
    closePerson.appendChild(email_1);
    var nameAsText_14 = xmlDoc.createTextNode("petar@gmail.com");
    email_1.appendChild(nameAsText_14);

    var timesChecked = xmlDoc.createElementNS(NAMESPACE, 'times_checked');
    newPerson.appendChild(timesChecked);

    var times = xmlDoc.createElementNS(NAMESPACE, 'times');
    timesChecked.appendChild(times);
    var nameAsText_15 = xmlDoc.createTextNode("4");
    times.appendChild(nameAsText_15);

    var thisMonth = xmlDoc.createElementNS(NAMESPACE, 'this_month');
    timesChecked.appendChild(thisMonth);
    var nameAsText_16 = xmlDoc.createTextNode("true");
    thisMonth.appendChild(nameAsText_16);

    var criminalActs = xmlDoc.createElementNS(NAMESPACE, 'criminal_acts');
    newPerson.appendChild(criminalActs);
    criminalActs.setAttribute('isCriminal', "true");

    var acts = xmlDoc.createElementNS(NAMESPACE, 'acts');
    criminalActs.appendChild(acts);
    var nameAsText_17 = xmlDoc.createTextNode("Протежание на повече от половин грам канабис;");
    acts.appendChild(nameAsText_17);

    var acts_1 = xmlDoc.createElementNS(NAMESPACE, 'acts');
    criminalActs.appendChild(acts_1);
    var nameAsText_18 = xmlDoc.createTextNode("Дребни кражби, в продължение на дълго време;");
    acts_1.appendChild(nameAsText_18);

    return xmlDoc;
}