import React, { Fragment } from "react"
import { Highlight, Snippet } from "react-instantsearch-dom"
import { Link } from "gatsby"

export const PageHit = clickHandler => ({ hit }) => (
  <div>
    <Link to={hit.slug || hit.fields.slug} onClick={clickHandler}>
      <h4>
        <Highlight attribute="title" hit={hit} tagName="mark" />
      </h4>
    </Link>
    <Snippet attribute="excerpt" hit={hit} tagName="mark" />
  </div>
)

