import React, { Component } from "react"
import Router from "next/router"

class HomePage extends Component {
  componentDidMount() {
    const { pathname } = Router
    if (pathname == "/") {
      Router.push("/basics/introduction")
    }
  }

  render() {
    return <div>&nbsp;</div>
  }
}

export default HomePage
