import React from 'react';
import About from './about';
import GenerateBadge from './generate-badge';

const App = () => (
  <div className="app">
    <h1>Documentation Badge</h1>
    <About />
    <h2>Generate a Badge</h2>
    <p>Generate the markdown for a badge with this handy form.</p>
    <GenerateBadge />
  </div>
);

export default App;
