import React, { useEffect, useState } from "react";
import CatCard from "../CatWithToyComponent/CatCard";

function Cats() {
  const [cats, setCats] = useState([]);
  const [catimgs, setCatimgs] = useState([]);
  console.log(catimgs);

  

  useEffect(() => {
    fetch("/cats")
      .then((res) => res.json())
      .then((catdata) => {
        setCats(catdata);
        getCatImgs(catdata.length);
      });
  }, []);

  if (catimgs === undefined) {
    return <h1>Loading</h1>
  }

  function getCatImgs(catsLength) {
    fetch(
      `https://api.thecatapi.com/v1/images/search?limit=${catsLength}&api_key=a5aef1ea-479f-448c-a891-a06312de4376`
    )
      .then((res) => res.json())
      .then((catimg) => {
        setCatimgs(catimg);
      });
  }

  const oneCat = cats.map((cat, i) => {
    return <CatCard cat={cat} key={cat.id} img={catimgs[i]} />;
  });

  return <>{oneCat}</>;
}

export default Cats;
