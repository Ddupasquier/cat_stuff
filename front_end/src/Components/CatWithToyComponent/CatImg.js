import React from 'react';
function CatImg({ img }) {
    return ( <img src={img.url}  className="catimg"/> );
}

export default CatImg;