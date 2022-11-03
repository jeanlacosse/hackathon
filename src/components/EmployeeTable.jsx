import '../App.css';

function EmployeeTable({
    employeeTable, employeeSelected
}) {

    
    return (
        <>
            <table>
                <thead>
                    <tr>
                        <th className='table'>ID Number</th>
                        <th className='table'>Name</th>
                        <th>Phone number</th>
                        <th>Title</th>
                        <th>Work location</th>
                        <th>Salary</th>
                    </tr>
                </thead>
                
                {/* All employees mapped over */}
                {employeeTable.map(employee => (
                    <tbody>
                    <tr>
                        <td> {employee.id}</td>
                        <td> {employee.first_name} {employee.last_name} </td>
                        <td> {employee.phone_number}</td>
                        <td>{employee.title}</td>
                        <td>{employee.location}</td>
                        
                        {/* This will show all salaries of those that a manager manages */}
                        {employeeSelected.manager === true && 
                        employeeSelected.manager_number === employee.manager_number 
                        &&
                        <td> ${employee.salary}</td>
                        }

                        {employeeSelected.hr &&
                        <td> ${employee.salary}</td>}
                        
                    </tr>
                    </tbody>
                ))}


            </table>
        </>
    )
}
export default EmployeeTable;