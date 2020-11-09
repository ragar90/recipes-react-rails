import React, { Component } from 'react';
import { connect } from 'react-redux';
import { bindActionCreators } from 'redux';
import { useHistory } from "react-router-dom";
import _ from 'lodash'
import * as recipiesActions from '../../actions'

function RecipeButton({recipe, fetchRecipe}) {
  let history = useHistory();
  return (
    <button type="button" className="btn btn-primary" onClick={() => {fetchRecipe(recipe, history)}}>
      Details
    </button>
  );
}


class List extends Component {
  constructor(props){
    super(props)
    const totalRecipies = this.props.recipes.length
    const recipesPerRow = 4
    this.state = {
      totalRecipies: totalRecipies,
      perRow: recipesPerRow
    }
  }
  render(){
    const totalRecipies = this.props.recipes.length
    const totalRows = Math.ceil(totalRecipies / this.state.perRow)
    let rows = []
    for (let row = 0; row < totalRows; row++) {
      const renderedRow = this.renderRow(this.props.recipes, row)
      rows.push(renderedRow)
    }
    return (
      <div className="row">
        <div className="container-fluid"> {rows} </div>
      </div>
    )
  }

  renderRow(recipes, row) {
    const perRow = this.state.perRow
    const offSet = row * perRow
    var upTo = (row * perRow) + (perRow)
    upTo = upTo > recipes.length ? recipes.length : upTo
    const that = this
    const elements = _.slice(recipes, offSet, upTo).map(function(recipe){
      return that.renderElement(recipe)
    })
    const classes = `row row-cols-${elements.length}`
    return(
      <div className={classes}>
        {elements}
      </div>
    )
  }

  fetchRecipe = (recipe, history) => {
    this.props.actions.fetchRecipe(recipe.id, history)
  }

  renderElement(recipe){
    return(
      <div className="col">
        <div className="card recipe-card">
          <img src={recipe.image} className="card-img-top recipe-img" alt={recipe.name}/>
          <div className="card-body">
            <h5 className="card-title">{recipe.title}</h5>
            <RecipeButton recipe={recipe} fetchRecipe={this.fetchRecipe} />
          </div>
        </div>
      </div>
    )
  }
}
const mapStateToProps = (state) => {
  return {
    recipes: state.recipes
  };
}
const mapDispatchToProps = dispatch => ({
  actions: bindActionCreators(Object.assign({}, recipiesActions),dispatch)
});
export default connect(mapStateToProps, mapDispatchToProps)(List);