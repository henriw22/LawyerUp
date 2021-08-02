import React, { Component } from 'react';
import axios from 'axios';
import './App.css';

import { BrowserRouter as Router, 
  Route, 
  Switch, 
  Link, 
  Redirect 
} from "react-router-dom";
// class App extends Component {
//   constructor(props) {
//     super(props)
//     this.state = {
//       message: 'Click the button to load data!'
//     }
//   }

//   fetchData = () => {
//     axios.get('/api/data') // You can simply make your requests to "/api/whatever you want"
//     .then((response) => {
//       // handle success
//       console.log(response.data) // The entire response from the Rails API

//       console.log(response.data.message) // Just the message
//       this.setState({
//         message: response.data.message
//       });
//     }) 
//   }

//   render() {
//     return (
//       <div className="App">
//         <h1>{ this.state.message }</h1>
//         <button onClick={this.fetchData} >
//           Fetch Data
//         </button>        
//       </div>
//     );
//   }
// }
//Pages
import LandingPage from './pages';
import NotFoundPage from './pages/404';
import clientRegister from './pages/clientRegister'
import lawyerRegister from './pages/lawyerRegister';
import { ClientHomePage } from "./components/ClientHomePage/index"; 
import Navbar from './components/ClientHomeNavbar';

class App extends Component {
  render() {
    return (
    <Router>
      <Switch>
      <Route exact path="/" component={LandingPage}/>
      <Route exact path="/clientRegister" component={clientRegister} /> 
      <Route exact path="/lawyerRegister" component={lawyerRegister} />
      <Navbar /> 
      <Route exact path="/clientHomePage" component={ClientHomePage} />
      <Route component={NotFoundPage} /> 
      <Redirect to="/404" /> 
      </Switch>
    </Router>
    );
  }
}
export default App;
