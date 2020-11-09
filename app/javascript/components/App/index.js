import { func } from 'prop-types';
import React, { Component } from 'react';
import { Provider } from 'react-redux';
import store from '../../store'
import Recipes from '../Recipies'

function App() {
  return(
    <Provider store={store}>
      <Recipes />
    </Provider>
  )
}

export default App;