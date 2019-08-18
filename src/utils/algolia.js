const query = `{
  allMdx(
    filter: {
      fileAbsolutePath: { regex: "/widgets/" },
    }
  ) {
    edges {
      node {
        objectID: id
        fields {
          slug
        }
        frontmatter {
          title
        }
        excerpt(pruneLength: 5000)
      }
    }
  }
}`
const flatten = arr =>
  arr.map(({ node: { frontmatter, ...rest } }) => ({
    ...frontmatter,
    ...rest,
  }))
const settings = { attributesToSnippet: [`excerpt:20`] }
const queries = [
  {
    query,
    transformer: ({ data }) => flatten(data.allMdx.edges),
    indexName: `flutter-widget-livebook`,
    settings,
  },
]
module.exports = queries
