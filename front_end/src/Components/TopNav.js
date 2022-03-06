import Navbar from "react-bootstrap/Navbar";
import Container from "react-bootstrap/Container";
import Nav from "react-bootstrap/Nav";
import Login from "./Login";
import React from "react";
import { useState, useEffect } from "react";

function TopNav() {
  const [user, setUser] = useState(null);

  useEffect(() => {
    fetch("/me").then((response) => {
      if (response.ok) {
        response.json().then((user) => setUser(user));
      }
    });
  }, []);

  function onLogout() {
    setUser(null)
  }

  function handleLogout() {
    fetch("/logout", {
      method: "DELETE",
    }).then(() => onLogout());
  }

  function renderLogin() {
    if (user !== null) {
      return (
        <>
          <p className="loginmsg">Welcome, {user.username}!</p>
          <button onClick={handleLogout} className="logoutbtn button">Logout</button>
        </>
      );
    } else {
      return <Login user={user} onLogin={setUser} />;
    }
  }

  return (
    <>
      <Navbar bg="light" variant="light">
        <Container>
          <Navbar.Brand href="">
            <strong>Cats</strong> and their{" "}
            <i>
              <u>People</u>
            </i>
          </Navbar.Brand>
          <Nav className="me-auto">
            <Nav.Link href="/cat_owners" className="navbtn">
              Home
            </Nav.Link>
            <Nav.Link href="/cats" className="navbtn">
              Cats
            </Nav.Link>
            <Nav.Link href="/cat_toys" className="navbtn">
              Cat Toys
            </Nav.Link>
            <Navbar.Text>{renderLogin()}</Navbar.Text>
          </Nav>
        </Container>
      </Navbar>
    </>
  );
}

export default TopNav;
