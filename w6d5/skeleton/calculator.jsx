import React from 'react';

class Calculator extends React.Component {
  constructor(props) {
    super(props);
    this.state = { result: 0, num1: "", num2: "" };
    this.setNum1 = this.setNum1.bind(this);
    this.setNum2 = this.setNum2.bind(this);
    this.add = this.add.bind(this);
    this.subtract = this.subtract.bind(this);
    this.multiply = this.multiply.bind(this);
    this.divide = this.divide.bind(this);
    this.clear = this.clear.bind(this);
  }

  render() {
    const { num1, num2, result } = this.state;
    return (
      <div>
        <h1>{result}</h1>
        <label>Num 1:<input type="text"
                            onChange={this.setNum1}
                            value={num1} />
        </label>
        <label>Num 2:<input type="text"
                            onChange={this.setNum2}
                            value={num2} />
        </label>
        <button onClick={this.clear}>Clear</button>
        <br />
        <button onClick={this.add}>+</button>
        <button onClick={this.subtract}>-</button>
        <button onClick={this.multiply}>*</button>
        <button onClick={this.divide}>/</button>
      </div>
    );
  }

  setNum1(e) {
    if((e.target.value.match(/\d+/))) {
      this.setState({ num1: parseInt(e.target.value) });
    } else {
      this.setState({ num1: "" });
    }
  }

  setNum2(e) {
    if(e.target.value.match(/\d+/)) {
      this.setState({ num2: parseInt(e.target.value) });
    } else {
      this.setState({ num2: "" });
    }
  }

  add(e) {
    e.preventDefault();
    this.setState({ result: this.state.num1 + this.state.num2 });
  }

  subtract(e) {
    e.preventDefault();
    this.setState({ result: this.state.num1 - this.state.num2 });
  }

  multiply(e) {
    e.preventDefault();
    this.setState({ result: this.state.num1 * this.state.num2 });
  }

  divide(e) {
    e.preventDefault();
    this.setState({ result: this.state.num1 / this.state.num2 });
  }

  clear(e) {
    e.preventDefault();
    this.setState({ num1: "", num2: "" });
  }
}

export default Calculator;
