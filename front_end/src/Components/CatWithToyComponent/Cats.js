import React, { useEffect, useState } from 'react';
import CatCard from "../CatWithToyComponent/CatCard"


function Cats() {

const [cats, setCats] = useState([])

    useEffect(() => {
        fetch("/cats")
          .then((res) => res.json())
          .then((cats) => {
            setCats(cats);
          });
    }, [])

    const allCats = cats.map(cat => {
        return <CatCard cat={cat} key={cat.id} />
    })

    return ( <>{allCats}</> );
}

export default Cats;