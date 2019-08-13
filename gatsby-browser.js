/**
 * Implement Gatsby's Browser APIs in this file.
 *
 * See: https://www.gatsbyjs.org/docs/browser-apis/
 */

import 'bootstrap/dist/css/bootstrap.css';
import 'html5-device-mockups/dist/device-mockups.css'
import "./src/styles/global.css"
import "./src/styles/github.css"

import { wrapRootElement as wrap } from './wrap-root-element'

export const wrapRootElement = wrap
