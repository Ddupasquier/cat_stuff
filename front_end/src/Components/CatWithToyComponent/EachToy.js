import React from "react";
import { Link } from "react-router-dom";

function EachToy({ toy: { toy_name } }) {

function pipe(toy_name) {
    return " | "
}

  return (
    <>
      {pipe()}<Link to="selected_toy" className="smallFont">
        {toy_name}
      </Link>
    </>
  );
}

export default EachToy;
