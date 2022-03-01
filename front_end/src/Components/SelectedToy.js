import React from "react";
import OwnerCard from "react-bootstrap/Card";

function SelectedToy() {
  return (
    <>
      <OwnerCard style={{ backgroundColor: "pink" }} className="">
        <OwnerCard.Body>
          <OwnerCard.Title>Stuff</OwnerCard.Title>
          Words
        </OwnerCard.Body>
      </OwnerCard>
    </>
  );
}

export default SelectedToy;
