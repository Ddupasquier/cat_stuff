import React, { useState, useEffect } from "react";
import ToyCard from "./ToyCard";
import Spinner from "react-bootstrap/Spinner";

function CatToys() {
  const [toys, setToys] = useState([]);
  const toyAndLikesObj = {};

  useEffect(() => {
    fetch("/cat_toys")
      .then((res) => res.json())
      .then((cat_toys) => {
        setToys(cat_toys);
      });
  }, []);

  if (toys === null) {
    return (
      <Spinner animation="border" role="status">
        <span className="visually-hidden">Loading...</span>
      </Spinner>
    );
  }

  toys.forEach((toy) => {
    if (toyAndLikesObj[toy.toy_name]) {
      toyAndLikesObj[toy.toy_name] += toy.likes;
    } else {
      toyAndLikesObj[toy.toy_name] = toy.likes;
    }
  });

  const allToys = Object.keys(toyAndLikesObj).map((key) => {
    return (
      <ToyCard toy_name={key} key={key} toy_likes={toyAndLikesObj[key]} />
    );
  });

  return <>{allToys}</>;
}

export default CatToys;
