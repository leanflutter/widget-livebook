import React from 'react';
import PropTypes from 'prop-types';
import Modal from 'react-modal';

import './style.css';

Modal.setAppElement('#___gatsby')

const customStyles = {
  overlay: {
    backgroundColor: 'rgba(0,0,0,.87)'
  },
  content : {
    backgroundColor: 'transparent',
    border: 'none',
    top: '50%',
    left: '50%',
    right: 'auto',
    bottom: 'auto',
    marginRight: '-50%',
    transform: 'translate(-50%, -50%)',
  }
};

const linkProps = {
  rel: 'nofollow nofollower noreferrer',
  target: '_blank',
  className: 'link',
};

class GridItem extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      modalIsOpen: false
    };

    this.openModal = this.openModal.bind(this);
    this.closeModal = this.closeModal.bind(this);
  }

  openModal() {
    this.setState({modalIsOpen: true});
  }

  closeModal() {
    this.setState({modalIsOpen: false});
  }

  render() {
    const { title, description, source, demo, thumbnailSrc } = this.props;

    return (
      <div className="grid-item">
        <div className="photobox" style={{ backgroundImage: `url(${thumbnailSrc})` }}>
          <div className="overlay" />
        </div>
        <div className="text">
          <h2>{title}</h2>
          <p className="desc">{description}</p>
          <div className="button-row">
            {demo ? (
              <a href={demo} style={{ color: '#ffffff' }} onClick={this.openModal} {...linkProps}>
                Demo
              </a>
            ) : null}
            {source ? (
              <a href={source} {...linkProps}>
                Source
              </a>
            ) : null}
          </div>
        </div>
        <Modal
          isOpen={this.state.modalIsOpen}
          onAfterOpen={this.afterOpenModal}
          onRequestClose={this.closeModal}
          style={customStyles}
          contentLabel="Example Modal"
        >
          <div
            style={{
              width: 390
            }}
          >
            <div
              className="device-wrapper"
              style={{
                maxWidth: 390,
              }}
            >
              <div
                className="device"
                data-device="iPhone7"
                data-orientation="portrait"
                data-color="black"
                style={{
                  pointerEvents: 'all'
                }}
              >
                <div
                  className="screen"
                  style={{
                    pointerEvents: 'all'
                  }}
                >
                  <iframe
                    style={{
                      width: '100%',
                      height: '100%',
                      margin: 0,
                      // ...(height ? { height } : {})
                    }}
                    src={demo}
                    scrolling="no"
                  />
                </div>
              </div>
            </div>
          </div>
        </Modal>
      </div>
    );
  }
}

GridItem.propTypes = {
  title: PropTypes.string.isRequired,
  description: PropTypes.string.isRequired,
  thumbnailSrc: PropTypes.string.isRequired,
  source: PropTypes.string,
  demo: PropTypes.string,
};
GridItem.defaultProps = {
  source: '',
  demo: '',
};

export { GridItem as default };
