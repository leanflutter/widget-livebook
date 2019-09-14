import React from 'react';
import PropTypes from 'prop-types'
import Link from 'gatsby-link'

import './style.css';

class Nav extends React.Component {
  componentDidMount() {
    const isDesktopOrLaptop = window.innerWidth >= 1200;

    if (isDesktopOrLaptop) {
      let s = document.createElement('script');
      s.src = "//cdn.carbonads.com/carbon.js?serve=CKYIT23U&placement=blankapporg";
      s.setAttribute("id", "_carbonads_js");
      s.async = true;

      this.adsElement.appendChild(s);
    }
  }

  render() {
    const { sections, selectedSectionId, selectedItemId } = this.props;
    return (
      <div
        id="nav"
        style={{
          height: '700px',
        }}
      >
        <div ref={el => (this.adsElement = el)}></div>
        {sections.map(section => (
          <div key={section.id}>
            <h3>{section.heading}</h3>
            <ul>
              {section.items.map(item => {
                const cssClass =
                  section.id === selectedSectionId && item.id === selectedItemId ? 'selected' : '';

                const url = `/${section.id}/${item.id}/`;

                return (
                  <li key={item.id}>
                    <Link className={cssClass} to={url}>
                      {item.title}
                    </Link>
                  </li>
                );
              })}
            </ul>
          </div>
        ))}
      </div>
    );
  }
}

Nav.propTypes = {
  sections: PropTypes.array, // eslint-disable-line
  selectedSectionId: PropTypes.string.isRequired,
  selectedItemId: PropTypes.string.isRequired,
};

export { Nav as default };
