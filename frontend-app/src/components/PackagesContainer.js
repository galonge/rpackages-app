import React, { Component } from "react";
import axios from 'axios';
import PackageList from './Packages';


class PackagesContainer extends Component {

	constructor(props) {
		super(props)
		this.state = {
			packages: []
		}
	}

	//Fetch latest packages from api
	getPackages() {
		axios.get('/api/v1/packages')
		.then(response => {
			console.log(response.data);
			this.setState({packages: response.data})
		})
		.catch(error => console.log(error))
	}


	//Only fetch packages when this component is mounted
	componentDidMount() {
		this.getPackages()
	}


	render() {
		return (
			<div>
				<PackageList rpackages={this.state.packages} />
			</div>
			)
	}
}


export default PackagesContainer
