import React from "react"
import PropTypes from "prop-types"

class AArticle extends React.Component {
  render() {
  	console.log(this.props.article.image);
    return (
      <div>
      	<h3>{this.props.article.title}</h3>
      	<img src={this.props.article.image.url} />
      	<p>{this.props.article.content.slice(50)}</p>
      	<li key={this.props.article.id}>{`${this.props.article.id} ${this.props.article.title}`}</li>
      </div>
    );
  }
}

AArticle.propTypes = {
  article: PropTypes.object
};
export default AArticle