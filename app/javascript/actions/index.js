import * as t from '../action_types';

export const fetchRecipes = (page) => (dispatch, getState) => {
  console.log("Fetching Recipes from Backend")
  const requestPage = page + 1
  const URL = `/api/recipes?page=${requestPage}`
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
