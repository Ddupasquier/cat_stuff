import React, { useState, useEffect } from 'react';
import ToyCard from './ToyCard';



function CatToys() {
    const [toys, setToys] = useState([])

    useEffect(() => {
        fetch("/cat_toys")
          .then((res) => res.json())
          .then((cat_toys) => {
            setToys(cat_toys);
          });
    }, [])

    const allToys = toys.map(toy => {
        return <ToyCard toy={toy} key={toy.id} />
    })

    return ( <>{allToys}</> );
}

export default CatToys;