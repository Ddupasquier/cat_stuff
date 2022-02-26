import Nav from "react-bootstrap/Nav";
import React, { useState } from "react";

function TopNav() {
  const [tab, setTab] = useState("")

  return (
    <Nav variant="tabs" defaultActiveKey="/">
      <Nav.Item>
        <Nav.Link href="/">Owners</Nav.Link>
      </Nav.Item>
      <Nav.Item>
        <Nav.Link href="/cats" eventKey="link-1">Cats</Nav.Link>
      </Nav.Item>
      <Nav.Item>
        <Nav.Link href="/cat_toys" eventKey="link-2">Toys</Nav.Link>
      </Nav.Item>
    </Nav>
  )

{/* <Nav variant="tabs" defaultActiveKey={tab}>
<Nav.Item>
  <Nav.Link href={tab} onClick={setTab("/")}>Owners</Nav.Link>
</Nav.Item>
<Nav.Item>
  <Nav.Link href={tab} eventKey="link-1" onClick={setTab("/cats")}>Cats</Nav.Link>
</Nav.Item>
<Nav.Item>
  <Nav.Link href={tab} eventKey="link-2" onClick={setTab("/cat_toys")}>Toys</Nav.Link>
</Nav.Item>
</Nav> */}
}

export default TopNav;
