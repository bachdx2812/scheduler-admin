window.onload = function() {
  formInputLabelPopUp();
}

function formInputLabelPopUp() {
  const userSelection = document.getElementsByClassName('form-helper');
  for(let i = 0; i < userSelection.length; i++) {
    let element = userSelection[i];
    if (element.value) {
      element.parentElement.classList.add('md-focused');
    } else {
      element.parentElement.classList.remove('md-focused');
    }

    element.addEventListener('focus', function(e) {
      e.target.parentElement.classList.add('md-focused');
    });

    element.addEventListener('focusout', function(e) {
      if (!element.value) {
        e.target.parentElement.classList.remove('md-focused');
      }
    });
  }
}
