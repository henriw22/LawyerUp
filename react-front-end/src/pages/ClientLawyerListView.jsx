import React, { useState, useEffect } from 'react';
import { useParams } from "react-router-dom";
import Header from './Header';
import Years_of_experience from '../components/LawyerDropdownList/yearsOfExprience';
import Locations from '../components/LawyerDropdownList/locations';
import Rating from '../components/LawyerDropdownList/rating';
import LawyerList from '../components/LawyerList';
import DefinedLawFieldBox from '../components/definedLawFieldBox';
import './ClientLawyerListView.scss';

const axios = require('axios');

const clientLawyerListView = () => {
  const [specialities, setSpecialities] = useState([])

  const { lawType } = useParams();
  console.log(lawType);
  const [lacationSelected, setLoactionSelected] = useState('Choose One');
  const [rateSelected, setRateSelected] = useState('Choose One');
  const [yearSelected, setYearSelected] = useState('Choose One');

  useEffect(() => {
    axios.get("/api/specialities").then(response => {
      setSpecialities(response.data);
      console.log('specialities:', specialities);
    });
  }, [])

  console.log('specialities:', specialities);

  const findSpecialityByLawType = (field) => {
    return specialities.find((elm) => elm.name === field) || {}
  }

  const lawSpeciality = findSpecialityByLawType(lawType.split('-').join(' '));
  console.log(lawSpeciality);

  return (
    <>
      <Header />
      <div className="client-lawyers-list">
        <div className="definition-of-law">
          <DefinedLawFieldBox name={lawSpeciality.name} definition={lawSpeciality.definition}/>
        </div>
        <div className="dropdown-options">
          <div>
            <label className="years">Years_of_experience</label>
            <Years_of_experience selected={yearSelected} setSelected={setYearSelected} />
          </div>
          <div>
            <label className="locations">Locations</label>
            <Locations selected={lacationSelected} setSelected={setLoactionSelected} />
          </div>
          <div>
            <label className="rating">Hourly Rate</label>
            <Rating selected={rateSelected} setSelected={setRateSelected} />
          </div>
        </div>
        <div className="lawyers-list">
          <LawyerList lawType={lawType} location={lacationSelected} rate={rateSelected} year={yearSelected}/>
        </div>
      </div>
    </>
  );
}

export default clientLawyerListView;