import TopNav from "./Components/TopNav";
import Main from "./Components/Main";
import Footer from "./Components/Footer";
import 'bootstrap/dist/css/bootstrap.min.css';



function App() {
  
  return (
    <div className="App">
      <header className="App-header">
        <TopNav />
      </header>
        <Main />
        <Footer />
    </div>
  );
}

export default App;
