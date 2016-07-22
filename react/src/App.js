import React, {Component} from 'react';
import ItemForm from './ItemForm';
import ActivityList from './ActivityList';

class App extends Component {
  constructor(props) {
    super(props);
    this.state = {
      activities: [],
      selectedItems: []
    };

    this.handleSelect = this.handleSelect.bind(this);
  }

  componentDidMount() {
    $.ajax({
      method: "GET",
      url: "/api/activities",
      contentType: "application/json"
    })
    .done(data => {
      this.setState({activities: data.activities});
      this.setState({selectedItems: data.selected});
    });
  }

  handleSelect(value) {
    $.ajax({
      method: "GET",
      url: "/api/activities",
      contentType: "application/json",
      data: {
        items: {
          values: value
        }
      }
    })
    .done(data => {
      this.setState({activities: data.activities});
      this.setState({selectedItems: data.selected});
    });
  }

  render() {
    return (
      <div className="content row">
        <div className="off-canvas position-left reveal-for-medium" id="offCanvas" data-off-canvas>
          <ItemForm
            value={this.state.selectedItems}
            handleSelectChange={this.handleSelect}
          />
        </div>
        <div className="off-canvas-content" data-off-canvas-content>
          <ActivityList
            activities={this.state.activities}
          />
        </div>
      </div>
    );
  }
}

export default App;
