import React from "react";
import OwnerCard from "react-bootstrap/Card";

function SelectedToy() {
  return (
    <>
      <OwnerCard style={{ backgroundColor: "rgb(230, 230, 230)" }} className="singlecard">
        <OwnerCard.Body>
          <OwnerCard.Title>Stuff</OwnerCard.Title>
          Words
        </OwnerCard.Body>
      </OwnerCard>
    </>
  );
}

export default SelectedToy;
