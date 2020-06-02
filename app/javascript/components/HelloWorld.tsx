import * as React from "react";

export interface HelloWorldProps {
	name: string;
}

export class HelloWorld extends React.Component<HelloWorldProps, {}> {
  render() {
    return (this.props.name)
  }
}
