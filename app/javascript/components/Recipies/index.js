import React, { Component } from 'react';
import { Provider } from 'react-redux';
import store from '../../store'
import List from './List'
class Recipes extends Component {
  constructor(){
    super()
  }
  render(){
    return (
      <Provider store={store}>
        <div className="container-fluid main-container">
          <div className="row">
            <div className="col"><h1 className="recipe-title">My Delecious Recipies</h1></div>
          </div>
          <List />
        </div>
      </Provider>
    )
  }
}
export default Recipes