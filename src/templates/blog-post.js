import React from 'react'
import { Link, graphql } from 'gatsby'
import MDXRenderer from 'gatsby-mdx/mdx-renderer'
import capitalize from 'lodash/capitalize';
import { Disqus, CommentCount } from 'gatsby-plugin-disqus'

import Layout from '../components/Layout'
import Nav from '../components/Nav'
import NavDropdown from '../components/Nav/dropdown'
import Search from '../components/Search'
import SEO from '../components/seo'
import * as siteConfig from '../new-components/basics/shared/site';
import './blog-post.css'

const getEditUrl = (fileAbsolutePath) => {
  const gitHubRepoUrl = 'https://github.com/blankapp/flutter-widget-livebook';
  const docPath = fileAbsolutePath.substr(fileAbsolutePath.indexOf('/content') + 1);


  return `${gitHubRepoUrl}/blob/master/${docPath}`;
};

const getSections = (sections, edges) =>
  Object.keys(sections).map(key => ({
    id: key,
    heading: capitalize(key),
    items: sections[key].map(path => {
      const page = edges.find(({ node }) => node.fields.slug === path);
      return Object.assign(page.node.frontmatter, {
        id: page.node.frontmatter.id || (page.node.fields.slug.replace('/widgets', ''))
      });
    }),
  }));

const getSelectedSection = (sections, path) =>
  Object.keys(sections).find(key => sections[key].indexOf(path) >= 0);

class BlogPostTemplate extends React.Component {
  componentDidMount() {
    const isDesktopOrLaptop = window.innerWidth >= 1200;

    if (!isDesktopOrLaptop) {
      let s = document.createElement('script');
      s.src = "//cdn.carbonads.com/carbon.js?serve=CKYIT23U&placement=blankapporg";
      s.setAttribute("id", "_carbonads_js");
      s.async = true;

      this.adsElement.appendChild(s);
    }
  }

  render() {
    const { location } = this.props;
    const { site, allMdx, mdx } = this.props.data;
    const siteTitle = site.siteMetadata.title

    const post = mdx

    const { docSections } = site.siteMetadata
    const sections = getSections(docSections, allMdx.edges);
    const selectedSection = getSelectedSection(docSections, mdx.fields.slug)
    const selectedItemId = post.frontmatter.id || (post.fields.slug.replace('/widgets', ''))

    let disqusConfig = {
      url: `${siteConfig.metadata.homepageUrl}${location.pathname}`,
      identifier: post.frontmatter.id || (post.fields.slug),
      title: post.frontmatter.title,
    }

    let keywords = [];

    if (location.pathname.indexOf('/widgets/') >= 0) {
      keywords = [
        'flutter',
        'flutter widget',
        `flutter ${post.frontmatter.title} example`,
        `flutter ${post.frontmatter.title} sample`,
        post.frontmatter.title,
        `${post.frontmatter.title} example`,
        `${post.frontmatter.title} sample`,
      ]
    }

    return (
      <Layout location={this.props.location} title={siteTitle}>
        <SEO title={post.frontmatter.title} description={post.excerpt} keywords={keywords} />
        <div id="docs-container" className="row">
          <div className="nav col-lg-3 col-md-3 d-none d-md-block">
            <Nav
              sections={sections}
              selectedItem={post}
              selectedSectionId={selectedSection}
              selectedItemId={selectedItemId}
            />
          </div>
          <div className="content col-xs-12 col-sm-12 col-md-9 col-lg-9">
            <div className="nav-dropdown">
              <NavDropdown
                sections={sections}
                selectedSection={selectedSection}
                selectedItem={selectedItemId}
              />
            </div>
            <Search />
            <div id="docs-content">
              <div className="content">
                <h2 className="title">{post.frontmatter.title}</h2>
                <p>
                  <a className="edit-link" href={getEditUrl(post.fileAbsolutePath)} target="_blank" rel="noopener noreferrer">
                    Edit this page
                  </a>
                </p>
                <div ref={el => (this.adsElement = el)}></div>
                <div className="markdown">
                  <MDXRenderer>{post.code.body}</MDXRenderer>
                </div>
                <Disqus config={disqusConfig} />
              </div>
            </div>
            <div className="nav-dropdown">
              <NavDropdown
                sections={sections}
                selectedSection={selectedSection}
                selectedItem={selectedItemId}
              />
            </div>
          </div>
        </div>
      </Layout>
    )
  }
}

export default BlogPostTemplate

export const pageQuery = graphql`
  query($slug: String!) {
    site {
      siteMetadata {
        title
        author
        docSections {
          basics
          widgets
        }
      }
    }
    allMdx {
      edges {
        node {
          fields {
            slug
          }
          frontmatter {
            title
            id
          }
        }
      }
    }
    mdx(fields: { slug: { eq: $slug } }) {
      id
      fileAbsolutePath
      excerpt(pruneLength: 160)
      fields {
        slug
      }
      frontmatter {
        title
        date(formatString: "MMMM DD, YYYY")
      }
      code {
        body
      }
    }
  }
`
