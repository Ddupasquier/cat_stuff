import React from "react";
import OwnerCard from "react-bootstrap/Card";
import EachToy from "../CatWithToyComponent/EachToy";
// import CatImg from "./CatImg";
import { useEffect, useState } from "react";

function CatCard({ cats, cat: { name, breed, age, cat_toys } }) {
  // const [catimgs, setCatimgs] = useState();

  // useEffect(() => {
  //   fetch(
  //     `https://api.thecatapi.com/v1/images/search?limit=${cats.length}&api_key=b83d28d4-4486-4a8f-9ca6-920ff1b53820`
  //   )
  //     .then((res) => res.json())
  //     .then((catimg) => {
  //       setCatimgs(catimg);
  //     });
  // }, []);

  // console.log(catimgs)

  const toys = cat_toys.map((toy) => {
    return <EachToy key={toy.id} toy={toy} />;
  });

  
  // const oneCatImg = catimgs.map((img) => {
  //   return <CatImg img={img} key={img.id}/>;
  // });

  return (
    <>
      <OwnerCard
        style={{ backgroundColor: "rgb(216, 255, 207)" }}
        className="ownercard"
      >
        <OwnerCard.Body>
          {/* {oneCatImg} */}
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
