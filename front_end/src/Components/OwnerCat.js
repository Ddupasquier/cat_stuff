import React, { useState } from "react";
import Modal from "react-bootstrap/Modal";

function OwnerCat({ name, cats }) {
  const [show, setShow] = useState(false);

  const handleClose = () => setShow(false);
  const handleShow = () => setShow(true);

  const allCats = cats.map((cat) => {
    return (
      <span key={cat.id}>
        {cat.name}
        <br />
      </span>
    );
  });

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
