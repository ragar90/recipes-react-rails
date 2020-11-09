import React, { Component } from 'react';
import { connect } from 'react-redux';
import { useHistory } from "react-router-dom";
import _ from 'lodash'

function BackButton() {
  let history = useHistory();
  console.log(history)
  return (
    <button type="button" className="btn btn-primary" onClick={() => {history.goBack()}}>
      Back
    </button>
  );
}

class RecipeDetail extends Component {

  render(){
    if(this.props.loadedRecipe !== null && this.props.loadedRecipe.name !== null){
      return this.renderSelectedRecipe()
    } else {
      return this.renderBlankRecipe()
    }
  }

  renderSelectedRecipe(){
    const recipe = this.props.loadedRecipe
    return (
      <div className="container-fluid main-container">
        <BackButton />
        <div className="jumbotron">
          <h1 className="display-4">{recipe.title}</h1>
          <p class="lead">by {recipe.chef ? recipe.chef.name : 'Unknown'}</p>
          <img src={recipe.image} className="figure-img img-fluid rounded recipe-detail-img" alt={recipe.title}/>
          {this.renderTagsContainer(recipe)}
          <hr class="my-4" />
          <p>{recipe.description}</p>
        </div>
      </div>
    )
  }

  renderTagsContainer(recipe){
    const tags = recipe.tags.map(tag => {
      return this.renderTag(tag)
    })
    return(
      <div className="tags-container">{tags}</div>
    )
  }

  renderTag(tag){
    const colors = _.shuffle(['badge-primary', 'badge-secondary', 'badge-success', 'badge-danger', 'badge-warning', 'badge-info', 'badge-light', 'badge-dark'])
    const classes = ['tag', 'badge', 'badge-pill', colors[0]].join(" ")
    return(
      <span className={classes}>{tag.name}</span>
    )
  }

  renderBlankRecipe(){
    return (
      <div className="container-fluid main-container">
        <div className="jumbotron">
          <h1 className="display-4">NO RECIPE SELECTED</h1>
        </div>
      </div>
    )
  }
}


const mapStateToProps = (state) => {
  return {
    loadedRecipe: state.loadedRecipe
  };
}

export default connect(mapStateToProps)(RecipeDetail);