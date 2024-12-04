import { useState } from "react";
import Footer from "./Footer";
import Header from "./Header";


const App = () => {

  const [nom, setNom] = useState("par défaut")

  const handleClick = () => {
    console.log("je clique !!!")

    setNom("Coucou")
  }

  const handleChange = (evt) => {
    console.log("je change")
    setNom(evt.target.value)
  }

  return (
    <div >
      <Header titre={nom}/>
      <h1>Application 1 ... {nom}</h1>
      <button onClick={handleClick} >Clique moi !</button>
      <input type="text" onChange={handleChange} value={nom}/>
      <Footer />
    </div>
  );
}

export default App;
