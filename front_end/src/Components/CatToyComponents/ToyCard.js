import React from "react";
import OwnerCard from "react-bootstrap/Card";


function ToyCard({ toy_name, toy_likes }) {

  return (
    <>
      <OwnerCard
        style={{ backgroundColor: "rgb(220, 220, 220)" }}
        className="toycard"
      >
        <OwnerCard.Body>
          <h6>{toy_name}</h6>
          Likes: {toy_likes}
        </OwnerCard.Body>
      </OwnerCard>
    </>
  );
}

export default ToyCard;
