import React from "react";
import OwnerCard from "react-bootstrap/Card";

function ToyCard({toy: {toy_name, likes}}) {
  return (
    <>
      <OwnerCard style={{ backgroundColor: "rgb(216, 255, 207)" }} className="ownercard">
        <OwnerCard.Body>
          <OwnerCard.Title>{toy_name}</OwnerCard.Title>
          Likes: {likes}
        </OwnerCard.Body>
      </OwnerCard>
    </>
  );
}

export default ToyCard;
