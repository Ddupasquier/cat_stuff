import Navbar from "react-bootstrap/Navbar";
import Container from "react-bootstrap/Container";
import Nav from "react-bootstrap/Nav";
import Login from "./Login";
import React from "react";
// import { useState, useEffect } from "react";

function TopNav({}) {
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
            <Navbar.Text>
              <Login />
            </Navbar.Text>
          </Nav>
        </Container>
      </Navbar>
    </>
  );
}

export default TopNav;
