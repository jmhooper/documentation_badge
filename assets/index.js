import React from 'react';
import ReactDOM from 'react-dom';
import App from './src/components/app';

require('./sass/main.scss');

ReactDOM.render(
  React.createElement(App),
  document.getElementById('js-app'), // eslint-disable-line no-undef
);
