import Nav from "react-bootstrap/Nav";
import React, { useState } from "react";

function TopNav() {
  const [tab, setTab] = useState("/")

  return (
    <Nav variant="pills" defaultActiveKey="/owners">
  <Nav.Item>
    <Nav.Link href="/owners">Owners</Nav.Link>
  </Nav.Item>
  <Nav.Item>
    <Nav.Link href="/cats" eventKey="link-1">Cats</Nav.Link>
  </Nav.Item>
  <Nav.Item>
    <Nav.Link href="/cat_toys" eventKey="link-2">
      Toys
    </Nav.Link>
  </Nav.Item>
</Nav>
  )

}

export default TopNav;
