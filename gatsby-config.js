module.exports = {
  siteMetadata: {
    title: `Flutter Widget Livebook`,
    author: `JianyingLi`,
    description: `An extension of the gatsby starter blog, with support for MDX`,
    siteUrl: `https://flutter-widget-livebook.blankapp.org/`,
    social: {
      twitter: `lijy91`,
    },
    docSections: {
      basics: [
        '/basics/introduction/',
        '/basics/faq/',
      ],
      widgets: [
        '/widgets/AlertDialog/',
        '/widgets/Align/',
        '/widgets/AnimatedAlign/',
        '/widgets/AnimatedBuilder/',
        '/widgets/AnimatedContainer/',
        '/widgets/AnimatedCrossFade/',
        '/widgets/AnimatedOpacity/',
        '/widgets/AnimatedPadding/',
        '/widgets/AppBar/',
        '/widgets/BottomNavigationBar/',
        '/widgets/Card/',
        '/widgets/Center/',
        '/widgets/Checkbox/',
        '/widgets/CheckboxListTile/',
        '/widgets/Chip/',
        '/widgets/CircleAvatar/',
        '/widgets/CircularProgressIndicator/',
        '/widgets/Column/',
        '/widgets/ConstrainedBox/',
        '/widgets/Container/',
        '/widgets/CupertinoActionSheet/',
        '/widgets/CupertinoActivityIndicator/',
        '/widgets/CupertinoButton/',
        '/widgets/CustomPaint/',
        '/widgets/CustomScrollView/',
        '/widgets/DatePicker/',
        '/widgets/Divider/',
        '/widgets/Drawer/',
        '/widgets/DropdownButton/',
        '/widgets/ExpansionPanelList/',
        '/widgets/FlatButton/',
        '/widgets/FloatingActionButton/',
        '/widgets/FlutterLogo/',
        '/widgets/Form/',
        '/widgets/GestureDetector/',
        '/widgets/GridView/',
        '/widgets/Icon/',
        '/widgets/IconButton/',
        '/widgets/InkWell/',
        '/widgets/LinearProgressIndicator/',
        '/widgets/ListTile/',
        '/widgets/ListView/',
        '/widgets/NestedScrollView/',
        '/widgets/Opacity/',
        '/widgets/OutlineButton/',
        '/widgets/Padding/',
        '/widgets/PopupMenuButton/',
        '/widgets/Radio/',
        '/widgets/RadioListTile/',
        '/widgets/RaisedButton/',
        '/widgets/RichText/',
        '/widgets/Row/',
        '/widgets/Scaffold/',
        '/widgets/SimpleDialog/',
        '/widgets/SingleChildScrollView/',
        '/widgets/SizedBox/',
        '/widgets/SliverAppBar/',
        '/widgets/Switch/',
        '/widgets/Text/',
        '/widgets/TextField/',
        '/widgets/Transform/',
        '/widgets/VerticalDivider/',
        '/widgets/Wrap/',
      ],
    },
  },
  plugins: [
    {
      resolve: `gatsby-source-filesystem`,
      options: {
        path: `${__dirname}/content/blog`,
        name: `blog`,
      },
    },
    {
      resolve: `gatsby-source-filesystem`,
      options: {
        path: `${__dirname}/content/assets`,
        name: `assets`,
      },
    },
    {
      resolve: `gatsby-mdx`,
      options: {
        extensions: ['.mdx', '.md'],
        gatsbyRemarkPlugins: [
          {
            resolve: `gatsby-remark-images`,
            options: {
              maxWidth: 590,
            },
          },
          {
            resolve: `gatsby-remark-responsive-iframe`,
            options: {
              wrapperStyle: `margin-bottom: 1.0725rem`,
            },
          },
          {
            resolve: `gatsby-remark-copy-linked-files`,
          },
          {
            resolve: `gatsby-remark-smartypants`,
          },
          {
            resolve: `gatsby-remark-embed-video`,
            options: {
              width: '100%',
              height: '100%',
            }
          }
        ],
      },
    },
    `gatsby-transformer-sharp`,
    `gatsby-plugin-sharp`,
    {
      resolve: `gatsby-plugin-google-analytics`,
      options: {
        trackingId: "UA-61561013-1",
        // Defines where to place the tracking script - `true` in the head and `false` in the body
        head: false,
        // Avoids sending pageview hits from custom paths
        exclude: ["/preview/**", "/do-not-track/me/too/"],
      },
    },
    {
      resolve: `gatsby-plugin-feed`,
      options: {
        query: `
          {
            site {
              siteMetadata {
                title
                description
                siteUrl
              }
            }
          }
        `,
        feeds: [
          {
            serialize: ({ query: { site, allMdx } }) => {
              return allMdx.edges.map(edge => {
                return Object.assign({}, edge.node.frontmatter, {
                  description: edge.node.excerpt,
                  data: edge.node.frontmatter.date,
                  url: site.siteMetadata.siteUrl + edge.node.fields.slug,
                  guid: site.siteMetadata.siteUrl + edge.node.fields.slug,
                  custom_elements: [{ 'content:encoded': edge.node.code.boy }],
                })
              })
            },

            /* if you want to filter for only published posts, you can do
             * something like this:
             * filter: { frontmatter: { published: { ne: false } } }
             * just make sure to add a published frontmatter field to all posts,
             * otherwise gatsby will complain
             **/
            query: `
            {
              allMdx(
                limit: 1000,
                sort: { order: DESC, fields: [frontmatter___date] },
              ) {
                edges {
                  node {
                    code {
                      body
                    }
                    fields { slug }
                    frontmatter {
                      title
                      date
                    }
                  }
                }
              }
            }
            `,
            output: '/rss.xml',
            title: 'Gatsby RSS feed',
          },
        ],
      },
    },
    {
      resolve: `gatsby-plugin-manifest`,
      options: {
        name: `Gatsby Starter Blog`,
        short_name: `GatsbyJS`,
        start_url: `/`,
        background_color: `#ffffff`,
        theme_color: `#663399`,
        display: `minimal-ui`,
        icon: `content/assets/gatsby-icon.png`,
      },
    },
    `gatsby-plugin-offline`,
    `gatsby-plugin-react-helmet`,
  ],
}
