import React from 'react';
import './App.css';
import PackagesContainer from './components/PackagesContainer';

function App() {
  return (
    <div className="container">
       <div className="header">
         <h1> R Package List </h1>
       </div>

       <PackagesContainer />
    </div>
  );
}

export default App;
