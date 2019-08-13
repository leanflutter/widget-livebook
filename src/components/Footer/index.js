import React from 'react';
import slackIcon from './images/slack-icon.png';
import githubIcon from './images/github-icon.png';
import './style.css';

const Footer = () => (
  <div id="footer" className="row">
    <div className="col-md-12">
      <div className="logos">
        <div className="col-xs-12">
          <center>
            Maintained by the <a href="https://github.com/lijy91">Jianying Li</a>.
          </center>
          <center>
            <a
              href="#"
              target="_blank"
              rel="noreferrer noopener"
            >
              <img src={slackIcon} alt="Slack" />
            </a>
            <a
              href="https://github.com/blankapp/flutter-widget-livebook"
              target="_blank"
              rel="noreferrer noopener"
            >
              <img src={githubIcon} alt="GitHub" style={{ padding: '7px' }} />
            </a>
          </center>
        </div>
      </div>
    </div>
  </div>
);

export default Footer;
