import React from 'react';
import OwnerCard from "react-bootstrap/Card";
import EachToy from "../CatWithToyComponent/EachToy"

function CatCard({cat: {name, breed, age, cat_toys}}) {

    const toysList = []

    const toys = cat_toys.map(toy => {
      // if (toy.toy_name === toy.toy_name)
      // return null
      // else 
      return <EachToy key={toy.id} toy={toy} />
    })

    return ( <>
        <OwnerCard style={{ backgroundColor: "rgb(216, 255, 207)" }} className="ownercard">
          <OwnerCard.Body>
            <OwnerCard.Title>{name}</OwnerCard.Title>
                <b>Age:</b> {age} <br />
                <b>Breed:</b> {breed}<br />
                <b>Their Toys:</b> {toys}
          </OwnerCard.Body>
        </OwnerCard>
      </> );
}

export default CatCard;