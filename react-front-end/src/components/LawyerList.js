// import { faJournalWhills } from "@fortawesome/free-solid-svg-icons";
import React, { useState, useEffect } from "react";

import LawyerListItem from "./LawyerListItem";
import "./LawyerList.scss";

const axios = require('axios');

export default function LawyerList(props){
  const lawType = props.lawType;
  const [lawyers, setLawyers] = useState([]);
  const location = props.location == "Choose One" || props.location == "None" ? null : props.location;
  const rate = props.rate == "Choose One" || props.rate ==  "None" ? null : props.rate;
  const year = props.year == "Choose One" || props.year ==  "None" ? null : props.year;

  // const [lawyers, setLawyers] = useState({});
  useEffect(() => {
    axios.get("/api/lawyers").then(response => {
      setLawyers(response.data);
      // [{ 1: ... 2: ... }]
      // setLawyers({...response.data});
    });
  }, [])

  // const lawyers = props.lawyers;
  // const lawyers = [
  //   {name: "John", specialization: "Family Law", rating: 4, review : "John is good."},
  //   {name: "Jane", specialization: "Criminal Law", rating: 5, review : "Jane is good."},
  //   {name: "Donkey", specialization: "Any Law", rating: 1, review : "Donkey is terrible."}
  // ]
  console.log('lawyers: ', lawyers);
  let filtered;

  const findBySpeciality = (field) => {
    let result = [];
    for (let lawyer of lawyers) {
      if (lawyer.speciality.find(elm => elm === field)) {
        result.push(lawyer);
      }
    }
    return result;
  }

  const findByLocation = (location) => {
    let result = [];
    for (let lawyer of findBySpeciality(lawType.split('-').join(' '))) {
      if (lawyer.city == location) {
        result.push(lawyer);
      }
    }
    return result;
  }

  const sortByRate = (rateRange) => {
    let result = [];
    const range = rateRange.split(' - ');
    for (let lawyer of findBySpeciality(lawType.split('-').join(' '))) {
      if (lawyer.rate >= parseInt(range[0]) && lawyer.rate <= parseInt(range[1])) {
        result.push(lawyer);
      }
    }
    return result;
  }

  const sortByYearOfExperience = (year) => { 
    let result = [];
    const years = year.split(' - ');
    for (let lawyer of findBySpeciality(lawType.split('-').join(' '))) {
      if (lawyer.years_of_experience >= parseInt(years[0]) && lawyer.years_of_experience <= parseInt(years[1])) {
        result.push(lawyer);
      }
    }
    return result;
  }
  

  if (location != null) {
    filtered = findByLocation(location);
  } else if (rate != null) {
    filtered = sortByRate(rate);
  } else if (year != null) {
    filtered = sortByYearOfExperience(year);
  } else {
    filtered = findBySpeciality(lawType.split('-').join(' '));  
  }



  const LawyersListItem = filtered.map((lawyer) => {
    return <LawyerListItem 
      id={lawyer.id}
      name={lawyer.name}
      specialization={lawyer.speciality}
      location={lawyer.city}
      rating={lawyer.rate}
      experience={lawyer.years_of_experience}
      review={lawyer.review}
      profile={lawyer.profile}
      image={lawyer.image}
    />
  });
  
  return(
    <ul className="LawyerList">
      <h3 className="lawyerlisttitle">Specialized In {props.lawfield}:</h3>
      {LawyersListItem}
    </ul>
  )
}