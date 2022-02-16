//import {BrowserRouter as Router, Switch, Route} from "react-router-dom";
import './App.css';
//import MemberPage from "./pages/MemberPage";
import MemberList from './component/MemberList';
import { useEffect, useState } from 'react';
import MemberAPI from './config/MemberAPI';

function App() {
  
    const [members, setMembers] = useState([]);

    useEffect(()=> {
      MemberAPI.find().then((res) => {
        console.log(res);
        setMembers(res);
      });
    }, []);
  
    return (
      <div style={{
        backgroundColor: '#c8e6c9',
        paddingLeft: '50px',
        paddingRight: '50px',
        }}>
        <header>
          <h1 className="fw-bold text-center" style={{paddingTop: '50px'}}>Web Profile</h1>
          <h3 className="fw-bold text-center " style={{paddingBottom: '50px'}}>Kelompok A3</h3>
        </header>
        <MemberList members={members}/>
      </div>
    );
}

export default App;
