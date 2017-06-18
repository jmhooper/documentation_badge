export const buildBadgeURL = (owner, repo) => {
  const baseURL = window.location.origin; // eslint-disable-line no-undef
  return `${baseURL}/${owner}/${repo}/badge.svg`;
};

export const generateBadgeMarkdown = badgeURL =>
  `![Documentation badge](${badgeURL})`;
