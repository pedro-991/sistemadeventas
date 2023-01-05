
//importamos los componentes
import Producto from './products/ShowProducts';
import Createpro from './products/CreateProducts';

//importamos el router
import { BrowserRouter, Route, Routes } from 'react-router-dom';


function App() {
  return (
    <div className="App">
      <header className="App-header">      
      </header>
      <BrowserRouter>
        <Routes>
            <Route path='./' element={ <Producto />} />
            <Route path='./create' element={ <Createpro />} />
        </Routes>
      </BrowserRouter>
      
    </div>
  );
}

export default App;
