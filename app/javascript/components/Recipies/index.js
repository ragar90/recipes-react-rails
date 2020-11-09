import React, { Component } from 'react';
import { connect } from 'react-redux';
import List from './List'
import * as recipiesActions from '../../actions'
import { bindActionCreators } from 'redux';
class Recipes extends Component {
  constructor(){
    super()
  }
  fetchRecipes = () => {
    this.props.actions.fetchRecipes(this.props.page)
  }
  render(){
    return (
      <div className="container-fluid main-container">
        <div className="row">
          <div className="col"><h1 className="recipe-title">My Delecious Recipies</h1></div>
        </div>
        <List />
        <div className ="row">
          <button type="button" className="btn btn-primary col load-btn" onClick={this.fetchRecipes}>Load More</button>
        </div>
      </div>
    )
  }
}
const mapStateToProps = (state) => {
  return {
    recipes: state.recipes,
    page: state.page
  };
}
const mapDispatchToProps = dispatch => ({
  actions: bindActionCreators(
    Object.assign({}, recipiesActions),
    dispatch
  )
});
export default connect(mapStateToProps, mapDispatchToProps)(Recipes);