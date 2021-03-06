import React from 'react';

const Activity = props => {
  let details = null;
  let accClass = "acc-item";

  let itemList = props.items.map(item => {
    return (
      <li key={item.id}>{item.quantity} {item.item_name}</li>
    );
  });

  if (props.status === "active") {
    details =
      <div className="acc-content">
        <div className="row">
          <div className="small-12 columns text-center">
            <img src={"assets/" + props.image} />
          </div>
          <div className="small-12 columns">
            <h4>Description</h4>
            <p>{props.description}</p>
            <h4>Items needed</h4>
            <ul>{itemList}</ul>
            <h4>Instructions</h4>
            <p>{props.instructions}</p>
            <p>
              <strong>Source:</strong> <a href={props.url} target="blank">{props.url}</a>
            </p>
          </div>
        </div>
      </div>;
    accClass += " is-active";
  }
  return (
    <li key={props.id} className={accClass}>
      <a href="#" onClick={props.handleClick} className="accordion-title">{props.title}</a>
      {details}
    </li>
  );
};

export default Activity;
