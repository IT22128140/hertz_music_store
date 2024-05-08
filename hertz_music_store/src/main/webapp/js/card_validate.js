//java script to stop entering more than 16 numbers to card number
function validateInput1(inputElement) {
    inputElement.value = inputElement.value.replace(/\D/g, '');

    var inputValue = inputElement.value;

    if (inputValue.length > 16) {
        inputElement.value = inputValue.slice(0, 16);
    }
}
//java script to stop entering more than 3 numbers to cvv 
function validateInput2(inputElement) {
    inputElement.value = inputElement.value.replace(/\D/g, '');

    var inputValue = inputElement.value;

    if (inputValue.length > 3) {
        inputElement.value = inputValue.slice(0, 3);
    }
}
//java script to stop entering more than 2 numbers to month and year
function validateInput3(inputElement) {
    inputElement.value = inputElement.value.replace(/\D/g, '');

    var inputValue = inputElement.value;

    if (inputValue.length > 2) {
        inputElement.value = inputValue.slice(0, 2);
    }
}