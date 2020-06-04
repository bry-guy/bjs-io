import * as React from "react";

export interface BlogsProps {
	content: any
}

export class Blogs extends React.Component<BlogsProps, {}> {
  render() {
    return (this.props.content)
  }
}
