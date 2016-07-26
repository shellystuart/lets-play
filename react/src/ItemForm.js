import React, {Component} from 'react';
import Select from 'react-select';

class ItemForm extends Component {
  constructor(props) {
    super(props);
    this.state = {
      options: [],
      disabled: false,
      value: []
    };
  }

  componentDidMount() {
    $.ajax({
      method: "GET",
      url: "/api/items",
      contentType: "application/json"
    })
    .done(data => {
      this.setState({options: data.items});
      this.setState({value: this.props.value});
    });
  }

  render() {
    let onSelectChange = value => this.props.handleSelectChange(value);
    return (
      <div className="select-list">
        <h4>Your Items:</h4>
        <Select multi simpleValue value={this.props.value} placeholder="Select Items" options={this.state.options} onChange={onSelectChange} />
      </div>
    );
  }
}

export default ItemForm;
