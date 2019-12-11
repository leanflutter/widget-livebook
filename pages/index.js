import React from "react";
import Router, { withRouter } from "next/router";

class HomePage extends React.PureComponent {
  componentDidMount() {
    const { router } = this.props;
    setTimeout(() => {
      if (router.pathname == "/") {
        Router.push("/basics/introduction")
      }
    }, 1);
  }

  render() {
    return (
      <>
        <p>&nbsp;</p>
      </>
    );
  }
}

export default withRouter(HomePage)
