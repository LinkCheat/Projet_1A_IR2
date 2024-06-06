// frontend/src/App.js file

import React, { Component } from "react";
import { BrowserRouter, Route, Routes, useRoutes } from "react-router-dom";
import HelloWorld from "./components/test/test";
import Login from "./components/login/Login";
import Error404 from "./components/errors/Error404";
import './App.css';


class App extends Component {
  render() {
    return (
      <div>
        <BrowserRouter>
          <Routes>
            <Route path="/login" element={<Login />} />
            <Route path="/" element={<Login />} />
            <Route path="/hello" element={<HelloWorld />} />
            <Route path="*" element={<Error404 />} />
          </Routes>
        </BrowserRouter>
      </div>
    );
  }
}

export default App;

