import React from "react";
import OwnerCard from "react-bootstrap/Card";
import EachToy from "../CatWithToyComponent/EachToy";
import CatImg from "./CatImg";
// import { useEffect, useState } from "react";

function CatCard({ img, cat: { name, breed, age, cat_toys } }) {
  console.log(img)
  

  const toys = cat_toys.map((toy) => {
    return <EachToy key={toy.id} toy={toy} />;
  });

  return (
    <>
      <OwnerCard
        style={{ backgroundColor: "rgb(216, 255, 207)" }}
        className="catcard"
      >
        <OwnerCard.Body>
          <CatImg img={img} key={img.id}/>
          <OwnerCard.Title>{name}</OwnerCard.Title>
          <b>Age:</b> {age} <br />
          <b>Breed:</b> {breed}
          <br />
          <b>Their Toys:</b> {toys}
        </OwnerCard.Body>
      </OwnerCard>
    </>
  );
}

export default CatCard;
