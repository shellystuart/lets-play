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
      const {id, title, description, instructions, image, url} = activity;
      let status = "";

      if (activity.id === this.state.selectedActivityId) {
        status = "active";
      }

      let onActivityClick = () => this.handleActivityClick(activity.id);

      return (
        <Activity
          key={id}
          title={title}
          description={description}
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
        Welcome!  Select some items so we can suggest an activity!
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
