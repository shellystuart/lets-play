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
    let onFilterChange = selected => this.props.handleFilterChange(selected);
    return (
      <div className="select-list">
        <h3>Your Items:</h3>
        <Select multi simpleValue value={this.props.value} placeholder="Select Items" options={this.state.options} onChange={onSelectChange} />
        <h4>Filter Results:</h4>
        <select defaultValue="" onChange={onFilterChange} id="indoor">
          <option value="">Indoor/Outdoor</option>
          <option value="true">Indoor</option>
          <option value="false">Outdoor</option>
        </select>
      </div>
    );
  }
}

export default ItemForm;
