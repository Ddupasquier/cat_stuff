import React, { useState } from "react";
import Modal from "react-bootstrap/Modal";
import { Link } from "react-router-dom";

function OwnerCat({ name, cats }) {
  const [show, setShow] = useState(false);

  const handleClose = () => setShow(false);
  const handleShow = () => setShow(true);

  const allCats = cats.map((cat) => {
    return (
      <React.Fragment key={cat.id}>
        <Link to="">
          {cat.name}
          <br />
        </Link>
      </React.Fragment>
    );
  });

  return (
    <React.Fragment>
      <div className="button shadow">
        <button className="button" onClick={handleShow}>
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
    </React.Fragment>
  );
}

export default OwnerCat;
