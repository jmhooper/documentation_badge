import React from 'react';

// eslint-disable-next-line no-undef
const badgeURLFormat = `${window.location.origin}/:owner/:repo/badge.svg`;

const About = () => (
  <div>
    <p>
      This app provides GitHub README badges that display the number of open
      issues in a repo that have the label &quot;documentation&quot;. The goal
      of this is to help maintainers keep an eye on doc rot in their repos.
    </p>
    <p>
      <a
        href="https://github.com/koajs/koa/issues?q=is%3Aopen+is%3Aissue+label%3Adocumentation"
      >
        <img src="/koajs/koa/badge.svg" alt="Documentation Badge" />
      </a>
    </p>
    <p>
      The format for the URL to see a badge is <code>{badgeURLFormat}
      </code> where <code>:owner</code> is the is the repo owner and <code>
      :repo</code> is the repo name.
    </p>
  </div>
);

export default About;
