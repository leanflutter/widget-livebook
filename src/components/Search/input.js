import React from "react"
import { connectSearchBox } from "react-instantsearch-dom"

import { Form, Input } from "./styles"

export default connectSearchBox(({ refine, ...rest }) => (
  <Form>
    <Input
      className="form-control form-control-sm ds-input"
      type="text"
      placeholder="type to search"
      aria-label="Search"
      onChange={e => refine(e.target.value)}
      {...rest}
    />
  </Form>
))
