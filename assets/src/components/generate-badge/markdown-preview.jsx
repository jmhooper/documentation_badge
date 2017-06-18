import React from 'react';
import PropTypes from 'prop-types';
import { generateBadgeMarkdown } from '../../utils/badge';

const MarkdownPreview = ({ badgeURL }) => (
  <div className="markdown-preview">
    <code>
      {generateBadgeMarkdown(badgeURL)}
    </code>
  </div>
);

MarkdownPreview.propTypes = {
  badgeURL: PropTypes.string.isRequired,
};

export default MarkdownPreview;
