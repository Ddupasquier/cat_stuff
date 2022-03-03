import React from "react";
import { useState } from "react";
import Modal from "react-bootstrap/Modal";

function Login({}) {
  const [show, setShow] = useState(false);

  const handleClose = () => setShow(false);
  const handleShow = () => setShow(true);

  return (
    <>
      <button
        variant="primary"
        onClick={handleShow}
        className="button loginbtn"
      >
        Login
      </button>

      <Modal show={show} onHide={handleClose}>
        <Modal.Header closeButton>
          <h3>Login</h3>
        </Modal.Header>
        <Modal.Body>
          <form className="loginform">
            <h1>Let's Get Started By Logging In!</h1>
            <input type="text" placeholder="Username"></input>
            <br />
            <input type="text" placeholder="Password"></input>
            <br />
            <button type="submit" className="button">
              Login
            </button>
          </form>
        </Modal.Body>
      </Modal>
    </>
  );
}

export default Login;
