import * as t from '../action_types';

export const fetchRecipes = (page) => (dispatch, getState) => {
  const requestPage = page + 1
  const URL = `/api/recipes?page=${requestPage}&per_page=5`
  const response =  fetch(URL, {
    method: 'GET',
    headers: {
      Accept: 'application/json',
      'Content-Type': 'application/json'
    }
  })
  .then((response) => {
    if(response.ok){
      return response.json()
    } else {
      throw new Error("Failed with request")
    }
  })
  .then((data) => {
    console.log("Response from server => ", data)
    const payload = {
      loadedRecipes: data.recipes,
      requestPage: requestPage
    }
    dispatch({ type: t.FETCH_RECIPES, payload: payload });
  })
  .catch((error) => {
    console.log("Error while fetching server => ", error)
  })
  
}

export const fetchRecipe = (recipeId, history) => (dispatch, getState) => {
  const URL = `/api/recipes/${recipeId}`
  console.log("Requesting for: ", URL)
  const response =  fetch(URL, {
    method: 'GET',
    headers: {
      Accept: 'application/json',
      'Content-Type': 'application/json'
    }
  })

  .then((response) => {
    if(response.ok){
      return response.json()
    } else {
      throw new Error("Failed with request")
    }
  })
  .then((data) => {
    console.log("Response from server => ", data)
    const payload = data.recipe ? {
      loadedRecipe: data.recipe
    } : {
      loadedRecipe: {
        name: "No Data From Server"
      }
    }
    dispatch({ type: t.FETCH_RECIPE, payload: payload });
    history.push(`/recipes/${recipeId}`)
  })
  .catch((error) => {
    console.log("Error while fetching server => ", error)
    const payload = {
      loadedRecipe: {}
    }
    dispatch({ type: t.FETCH_RECIPE, payload: payload });
  })
}
