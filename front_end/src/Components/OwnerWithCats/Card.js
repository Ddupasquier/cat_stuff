import React from "react";
import OwnerCard from "react-bootstrap/Card";
import Spinner from "react-bootstrap/Spinner";
import OwnerCat from "./OwnerCat";

function Card({ owner, owner: { name, age, city, state, image, cats } }) {
  if (owner === null) {
    return (
      <Spinner animation="border" role="status">
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
        <OwnerCard.Body>
          <OwnerCard.Title>{name}</OwnerCard.Title>
          <OwnerCard.Text>
            {age} <br />
            {city},<br />
            {state}
          </OwnerCard.Text>
          <OwnerCat name={name} cats={cats} />
        </OwnerCard.Body>
      </OwnerCard>
    </>
  );
}

export default Card;
