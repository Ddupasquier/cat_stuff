import React from "react";
import { useEffect, useState } from "react";
import { Switch, Route } from "react-router-dom";

import Card from "./OwnerWithCats/Card";
import Cats from "./CatWithToyComponent/Cats";
import CatToys from "./CatToyComponents/CatToys";
import SelectedToy from "./SelectedToy";

import Spinner from "react-bootstrap/Spinner";

function Main() {
  const [owners, setOwners] = useState([]);

  useEffect(() => {
    fetch("/cat_owners")
      .then((res) => res.json())
      .then((owners) => {
        setOwners(owners);
      });
  }, []);

  // useEffect(() => {
  //   $.ajax({
  //     url: 'https://randomuser.me/api/',
  //     dataType: 'json',
  //     success: function(data) {
  //       console.log(data);
  //     }
  //   });
  // }, [])

  

  if (owners === null) {
    return (
      <Spinner animation="border" role="status">
        <span className="visually-hidden">Loading...</span>
      </Spinner>
    );
  }

  const allOwners = owners.map((owner) => {
    return <Card owner={owner} key={owner.id} />;
  });

  // console.log(allOwners[1])

  return (
    <main>
      <Switch>
        <Route path="/cats">
          <Cats/>
        </Route>
        <Route path="/cat_toys">
          <CatToys/>
        </Route>
        <Route path="/selected_toy">
          <SelectedToy />
        </Route>
        <Route path="/">{allOwners}</Route>
        <Route path="*">
          <h1>404: You done goofed</h1>
        </Route>
        
      </Switch>
    </main>
  );
}

export default Main;
