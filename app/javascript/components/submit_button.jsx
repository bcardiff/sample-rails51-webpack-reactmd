import React from 'react'
import PropTypes from 'prop-types'
import Button from 'react-md/lib/Buttons/Button'

const SubmitButton = props => (
  <Button raised label={props.label} type="submit" />
)

SubmitButton.defaultProps = {
  label: 'Submit'
}

SubmitButton.propTypes = {
  label: PropTypes.string
}

export default SubmitButton
