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

  const allCats = cats.map((cat) => {
    return (
      <span key={cat.id}>
        {cat.name}
        <br />
      </span>
    );
  });

  return (
    <>
      <OwnerCard style={{ backgroundColor: "pink" }} className="ownercard">
        <OwnerCard.Img variant="top" src={image} />
        <OwnerCard.Body>
          <OwnerCard.Title>{name}</OwnerCard.Title>
          <OwnerCard.Text>
            {age} <br />
            {city}, {state}
          </OwnerCard.Text>
          <OwnerCat name={name} allCats={allCats} />
        </OwnerCard.Body>
      </OwnerCard>
    </>
  );
}

export default Card;
