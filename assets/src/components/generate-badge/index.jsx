import React from 'react';
import Form from './form';
import MarkdownPreview from './markdown-preview';
import { buildBadgeURL } from '../../utils/badge';

class GenerateBadge extends React.Component {
  constructor(props) {
    super(props);
    this.state = { badgeURL: null };
  }

  formSubmitted(owner, repo) {
    if (owner && repo) {
      this.setState({
        badgeURL: buildBadgeURL(owner, repo),
      });
    } else {
      this.setState({
        badgeURL: null,
      });
    }
  }

  renderBadge() {
    if (this.state.badgeURL) {
      return <img src={this.state.badgeURL} alt="Documentation badge" />;
    }
    return null;
  }

  renderMarkdownPreview() {
    if (this.state.badgeURL) {
      return <MarkdownPreview badgeURL={this.state.badgeURL} />;
    }
    return null;
  }

  render() {
    return (
      <div>
        <h2>Generate a Badge</h2>
        <p>Generate the markdown for a badge with this handy form.</p>
        <Form onSubmit={(owner, repo) => this.formSubmitted(owner, repo)} />
        {this.renderMarkdownPreview()}
        {this.renderBadge()}
      </div>
    );
  }
}

export default GenerateBadge;
