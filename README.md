I designed this project using MVVM. I created a request view model to store the data received from the network class fetch requests. The configuration data is stored as an array in the request view model. The request view model sorts the views based on the configuration array, and the list of ordered views are passed to the profile view.

The request view model also receives the user view models from the user data fetched. The user view model stores and formats user properties.

The request view model is instantiated in the main screen. Instantiation triggers the fetch requests and the data is passed to the profile view.

The profile view loops through the array of sorted views to render the views in the order from the configuration endpoint.

The next button increments the index for the user view model array so the next user is shown. 
