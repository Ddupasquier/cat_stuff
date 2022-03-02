import React, { useEffect, useState } from "react";
import CatCard from "../CatWithToyComponent/CatCard";

function Cats() {
  const [cats, setCats] = useState([]);


  useEffect(() => {
    fetch("/cats")
      .then((res) => res.json())
      .then((catdata) => {
        setCats(catdata);
      });
  }, []);

  const oneCat = cats.map((cat) => {
    return <CatCard cats={cats} cat={cat} key={cat.id} />;
  });

  return <>{oneCat}</>;
}

export default Cats;
