import React, { Component } from 'react';
import _ from 'lodash'
class List extends Component {
  constructor(props){
    super(props)
    console.log("props =>", this.props)
    const totalRecipies = this.props.recipes.length
    const recipesPerRow = 4
    this.state = {
      totalRecipies: totalRecipies,
      rows: Math.ceil(totalRecipies / recipesPerRow),
      perRow: recipesPerRow
    }
  }
  render(){
    let rows = []
    for (let row = 0; row < this.state.rows; row++) {
      const renderedRow = this.renderRow(this.props.recipes, row)
      rows.push(renderedRow)
    }
    return (
      <div className="container-fluid"> {rows} </div>
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
    return(
      <div className="row">
        {elements}
      </div>
    )
  }

  renderElement(recipe){
    return(
      <div className="col-sm">
        <div className="card recipe-card">
          <img src={recipe.image} className="card-img-top" alt={recipe.name}/>
          <div className="card-body">
            <h5 className="card-title">{recipe.name}</h5>
            <a href="#" className="btn btn-primary">Details</a>
          </div>
        </div>
      </div>
    )
  }
}
export default List