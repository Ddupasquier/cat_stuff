import React from "react";
import OwnerCard from "react-bootstrap/Card";


function ToyCard({ toy_name, toy_likes }) {

  return (
    <>
      <OwnerCard
        style={{ backgroundColor: "rgb(220, 220, 220)" }}
        className="ownercard"
      >
        <OwnerCard.Body>
          <OwnerCard.Title>{toy_name}</OwnerCard.Title>
          Likes: {toy_likes}
        </OwnerCard.Body>
      </OwnerCard>
    </>
  );
}

export default ToyCard;
