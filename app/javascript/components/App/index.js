import { func } from 'prop-types';
import React, { Component } from 'react';
import { Provider } from 'react-redux';
import {
  BrowserRouter as Router,
  Switch,
  Route,
  Link,
  useParams
} from "react-router-dom";
import store from '../../store'
import Recipes from '../Recipies'
import RecipeDetail from '../RecipeDetail'

function App() {
  return(
    <Provider store={store}>
      <Router>
        <Switch>
          <Route exact={true} path="/" component = {Recipes}/>
          <Route path="/recipes/:id" component = {RecipeDetail} >

          </Route>
        </Switch>
      </Router>
    </Provider>
  )
}

export default App;