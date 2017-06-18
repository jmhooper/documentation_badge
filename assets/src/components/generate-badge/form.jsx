import React from 'react';
import PropTypes from 'prop-types';

class Form extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      owner: '',
      repo: '',
    };
  }

  submitForm(event) {
    event.preventDefault();
    this.props.onSubmit(this.state.owner, this.state.repo);
  }

  render() {
    return (
      <form
        onSubmit={event => this.submitForm(event)}
      >
        <label htmlFor="owner">Repo owner:</label>
        <input
          name="owner"
          id="owner"
          type="text"
          value={this.state.owner}
          onChange={event => this.setState({ owner: event.target.value })}
        />

        <label htmlFor="repo">Repo name:</label>
        <input
          name="repo"
          id="repo"
          type="text"
          value={this.state.repo}
          onChange={event => this.setState({ repo: event.target.value })}
        />

        <input value="Generate" type="submit" />
      </form>
    );
  }
}

Form.propTypes = {
  onSubmit: PropTypes.func.isRequired,
};

export default Form;
