import React, { Component } from 'react';
import { connect } from 'react-redux';
import { bindActionCreators } from 'redux';
import * as recipiesActions from '../../actions'
import List from './List'
class Recipes extends Component {
  constructor(){
    super()
  }
  componentDidMount(){
    this.fetchRecipes()
  }
  fetchRecipes = () => {
    this.props.actions.fetchRecipes(this.props.page)
  }
  render(){
    console.log("rendering....")
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