import React from "react";
import OwnerCard from "react-bootstrap/Card";
import Spinner from "react-bootstrap/Spinner";
import OwnerCat from "./OwnerCat";

function Card({ owner, owner: { name, age, city, state, image, cats } }) {
  if (owner === null) {
    return (
      <Spinner animation="border" role="status" className="toCenter">
        <span className="visually-hidden">Loading...</span>
      </Spinner>
    );
  }

  return (
    <>
      <OwnerCard
        style={{ backgroundColor: "rgb(241, 241, 241)" }}
        className="ownercard"
        key={owner.id}
      >
        <img src={image} className="imgbg" />
        <div className="cardtextcont">
          <h6>{name}</h6>
          <p>
            {age} <br />
            {city},<br />
            {state}
          </p>
          <OwnerCat name={name} cats={cats} />
        </div>
      </OwnerCard>
    </>
  );
}

export default Card;
