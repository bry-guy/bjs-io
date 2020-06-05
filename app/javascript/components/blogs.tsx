import * as React from "react";
import ReactHtmlParser from "react-html-parser";

interface DisplayBlog {
	title: string
	date: Date
	content: string
	preview: string
}

export interface BlogsProps {
	blogs: DisplayBlog[]
}

export class Blogs extends React.Component<BlogsProps, {}> {
  render() {
	  const foo = this.props.blogs.map((item: DisplayBlog) => (
		  <div>
			  <div className="title" key={item.title}>{ReactHtmlParser(item.title)}</div>
			  <div className="date" key={`${item.title}_${item.date}`}>{item.date}</div>
			  <div className="preview" key={`${item.title}_${item.preview}`}>{item.preview}</div>
		  </div>
		  ));
	  return(<div className="blogs">{foo}</div>);
  }
}
