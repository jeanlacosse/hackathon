import { useState, useEffect } from 'react';
import axios from 'axios';
import React from 'react';

function LoginPage({
    getEmployeeInfo}) {
    
    const [password, setPassword] = useState('');
    const [employeeId, setEmployeeId] = useState('');
    
    
    const handleSubmit = (evt) => {
        evt.preventDefault();
        console.log(employeeId);
        getEmployeeInfo(employeeId);
    
        
    }
    
    

    return (
        <>
        <h2>Please Enter your employee ID and password to see your salary</h2>
            <form action="" onSubmit={handleSubmit}>
                
                
                <input
                    onChange={(evt) => setEmployeeId(evt.target.value)}
                    type="text"
                    placeholder='Employee ID'
                    value={employeeId}
                    required
                />
                <input
                    onChange={(evt) => setPassword(evt.target.value)}
                    type="text"
                    placeholder='Password'
                    value={password}
                    required
                />
                <input type="submit" value="Login" />
            </form>
        </>
    )
}
export default LoginPage;