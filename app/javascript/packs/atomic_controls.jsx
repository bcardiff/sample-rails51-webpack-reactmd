import React from 'react'
import ReactDOM from 'react-dom'
import SubmitButton from '../components/submit_button'
import TextField from 'react-md/lib/TextFields'

function mountComponents() {
  registerComponent(SubmitButton, 'SubmitButton')
  registerComponent(TextField, 'TextField')
}

function registerComponent(constructor, className) {
  var nodes = document.querySelectorAll('[data-react-class=' + className + ']');

  for (var i = 0; i < nodes.length; ++i) {
    var node = nodes[i];

    var propsJson = node.getAttribute('data-react-props');
    var props = propsJson && JSON.parse(propsJson);

    ReactDOM.render(React.createElement(constructor, props), node);
  }
}

document.addEventListener('DOMContentLoaded', () => {
  mountComponents();
});
