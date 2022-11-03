import '../App.css';

function EmployeeItem({
    employee
}) {
    return (
        <>
        <h4>Your information</h4>
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
            <tr>
                <td> {employee.id}</td>
                <td> {employee.first_name} {employee.last_name} </td>
                <td> {employee.phone_number}</td>
                <td>{employee.title}</td>
                <td>{employee.location}</td>
                <td> ${employee.salary}</td>

            </tr>
            </table>
        </>
    )
}
export default EmployeeItem;