import React from 'react';

const FormField = props => {
  return (
    <div className="checkbox columns">
      <label htmlFor={props.id}>{props.name}</label>
      <input type="checkbox" value={props.id} />
    </div>
  );
};

export default FormField;
