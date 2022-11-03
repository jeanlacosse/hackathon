import logo from './logo.svg';
import './App.css';
import LoginPage from './components/LoginPage';
import EmployeeTable from './components/EmployeeTable';
import EmployeeItem from './components/EmployeeItem';

import { useState, useEffect } from 'react';
import axios from 'axios';
import React from 'react';

function App() {
  let [employeeTable, setEmployeeTable] = useState([]);
  const [employee, setEmployee] = useState({});
  

  useEffect(() => {
    getEmployees();
  }, [])

  

  const getEmployees = () => {
    axios.get('/employees')
      .then((response) => {
        console.log('response', response)
        setEmployeeTable(response.data)
      })
      .catch((err) => {
        alert('ERR in the GET');
        console.log(err);
      })
  }

  const getEmployeeInfo = (employeeId) => {
    console.log('employee id', employeeId)
    axios.get(`/employees/${employeeId}/info`)
      .then((response) => {
        console.log('response', response)
        setEmployee(response.data)
      })
      .catch((err) => {
        alert('ERR in the GET employee');
        console.log(err);
      })
  }

  return (
    <div className="App">
      <header className="App-header">
        <LoginPage
          getEmployeeInfo={getEmployeeInfo}
          employee={employee}
        />
        <EmployeeItem 
          employee={employee}
        />

        <EmployeeTable
          employeeTable={employeeTable}
          employeeSelected={employee}
        />
      </header>
    </div>
  );
}

export default App;
