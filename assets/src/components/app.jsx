import React from 'react';
import About from './about';
import Footer from './footer';
import GenerateBadge from './generate-badge';

const App = () => (
  <div className="app">
    <h1>Documentation Badge</h1>
    <About />
    <GenerateBadge />
    <Footer />
  </div>
);

export default App;
