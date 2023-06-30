/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
// form repeater
document.addEventListener('DOMContentLoaded', function() {
  var repeaterElements = document.querySelectorAll('.repeater');
  
  repeaterElements.forEach(function(repeaterElement) {
    var repeater = new Repeater(repeaterElement);
    
    repeater.initEmpty = false;
    repeater.defaultValues = {
      'text-input': ''
    };
    repeater.show = function() {
      this.element.style.display = 'block';
    };
    repeater.hide = function(deleteElement) {
      this.element.style.display = 'none';
      setTimeout(function() {
        generateCV();
      }, 500);
    };
    repeater.isFirstItemUndeletable = true;
    
    repeater.init();
  });
});
