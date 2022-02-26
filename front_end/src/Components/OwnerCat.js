import React, { useState } from "react";
// import Button from "react-bootstrap/Button"
import Modal from "react-bootstrap/Modal";

function OwnerCat({ name, allCats }) {
  const [show, setShow] = useState(false);

  const handleClose = () => setShow(false);
  const handleShow = () => setShow(true);

  return (
    <>
      <div className="button shadow">
        <button className="button button2" onClick={handleShow}>
          ...and their kitties!
        </button>
      </div>

      <Modal
        show={show}
        onHide={handleClose}
        backdrop="static"
        keyboard={false}
        className="modal"
      >
        <Modal.Header closeButton>
          <Modal.Title>{name}'s kitties!</Modal.Title>
        </Modal.Header>
        <Modal.Body>{allCats}</Modal.Body>
      </Modal>
    </>
  );
}

export default OwnerCat;
