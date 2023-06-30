import './tablerec.css'
import logoImage from './ALOGO.png';


function Booking() {
    return ( <>
    <div className="container1">
      <div className="mainbody">
        <h1>TABLE RESERVATION</h1>
        <input className="fn" type="text" placeholder="Enter First Name" />
        <input className="ln" type="text" placeholder="Enter Last Name" />
        <input className="email" type="email" placeholder="Enter E-mail Name" />
        <input className="Phone" type="number" min="10" max="10" placeholder="Enter Phone Name" />
        <input className="Persons" type="number" min="1" max="5" placeholder="Enter No of Persons" />
        <input className="Date" type="date" placeholder="Enter Date" />
        <button className="today">Today</button>
        <button className="tommorow">Tomorrow</button>
        <select name="" id="" className="Session">
          <option>Lunch</option>
          <option>Dinner</option>
        </select>
        <input className="Time" type="text" placeholder="Enter Time" />
        <input className="reservebutton" type="submit" />
      </div>
      <img src={logoImage} alt="logo" className="logo" />

      <h2>FOOD-E-STAAN</h2>
    </div></> );
}

export default Booking;