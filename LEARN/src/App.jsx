import { useRef } from "react";
import Child from "./Child.jsx";

function App() {
  const headingRef = useRef(null);

  function changeColor() {
    headingRef.current.style.color = "red";
  }

  return (
    <>
      <Child ref={headingRef} />

      <button onClick={changeColor}>Change Color</button>
    </>
  );
}

export default App;