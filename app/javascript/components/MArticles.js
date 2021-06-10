import React from "react"
import PropTypes from "prop-types"
import AArticle from "./AArticle.js"

class MArticles extends React.Component {
  render() {
    return (
      <div>
        <h1>All Articles</h1>
        <ul>
          {this.props.articles.map(article => (
            <AArticle article={article} />
          ))}
        </ul>
      </div>
    );
  }
}

MArticles.propTypes = {
  articles: PropTypes.array
};
export default MArticles