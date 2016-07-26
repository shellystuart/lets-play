import React, {Component} from 'react';
import Activity from './Activity';

class ActivityList extends Component {
  constructor(props) {
    super(props);
    this.state = {selectedActivityId: null};
    this.handleActivityClick = this.handleActivityClick.bind(this);
  }

  handleActivityClick(id) {
    if (id === this.state.selectedActivityId) {
      this.setState({selectedActivityId: null});
    } else {
      this.setState({selectedActivityId: id});
    }
  }

  render() {
    let activities = this.props.activities.map(activity => {
      const {id, title, description, instructions, image, url, items} = activity;
      let status = "";

      if (activity.id === this.state.selectedActivityId) {
        status = "active";
      }

      let onActivityClick = () => this.handleActivityClick(activity.id);

      return (
        <Activity
          key={id}
          id={id}
          title={title}
          description={description}
          items={items}
          instructions={instructions}
          image={image}
          url={url}
          status={status}
          handleClick={onActivityClick}
        />
      );
    });

    let content;
    if (this.props.activities.length === 0) {
      content = <div className="callout primary text-center">
        <h3>Welcome!</h3>
        <p>Let's Play makes it easy to find activities to do with your kids based on items you already have at home.</p>
        <p className="hide-for-small-only">Select some items so we can suggest an activity!</p>
        <p className="hide-for-medium">Just click the top button or swipe right to select some items so we can suggest an activity!</p>
        </div>;
    } else {
      content = <ul className="accordion">
        {activities}
      </ul>;
    }

    return (
      <div>{content}</div>
    );
  }
}

export default ActivityList;
