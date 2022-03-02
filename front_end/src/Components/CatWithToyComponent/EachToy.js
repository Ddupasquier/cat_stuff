import React, { useEffect, useState } from "react";
import { Link, useParams } from "react-router-dom";

function EachToy({ toy: { toy_name } }) {
  // const [toy, setToy] = useState(null);
  // const { id } = useParams();

  // useEffect(() => {
  //   fetch(`cat_toys/${id}`)
  //     .then((resp) => resp.json())
  //     .then((data) => setToy(data));
  // }, [id]);

function pipe() {
    return " | "
}

// {`/selected_toy/${toy.id}`}

  return (
    <>
      {pipe()}<Link to="selected_toy" className="smallFont">
        {toy_name}
      </Link>
    </>
  );
}

export default EachToy;
