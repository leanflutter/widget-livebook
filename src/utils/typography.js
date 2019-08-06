import Typography from 'typography'
import wordpress2013Theme from 'typography-theme-wordpress-2016'

wordpress2013Theme.overrideThemeStyles = () => {
  return {
    'a.gatsby-resp-image-link': {
      boxShadow: `none`,
    },
  }
}

delete wordpress2013Theme.googleFonts

const typography = new Typography(wordpress2013Theme)

// Hot reload typography in development.
if (process.env.NODE_ENV !== `production`) {
  typography.injectStyles()
}

export default typography
export const rhythm = typography.rhythm
export const scale = typography.scale
