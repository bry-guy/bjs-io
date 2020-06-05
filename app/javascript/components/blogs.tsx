import * as React from "react";
import ReactHtmlParser from "react-html-parser";

interface Blog {
	title: string
	date: Date
	content: string
	preview: string
}

export interface BlogsProps {
	blogs: Blog[]
}

export class Blogs extends React.Component<BlogsProps, {}> {
  render() {
	  const blogs= this.props.blogs.map((item: Blog) => (
		  <BlogItem blog={item}/>
	  ));

	  return(<div className="blogs">{blogs}</div>);
  }
}

interface BlogItemProps {
	blog: Blog
}

class BlogItem extends React.Component<BlogItemProps, {}> {
	render() {
		const { blog } = this.props;
		return(
			<div>
				<div className="title" key={blog.title}>{ReactHtmlParser(blog.title)}</div>
				<div className="date" key={`${blog.title}_${blog.date}`}>{blog.date}</div>
				<div className="preview" key={`${blog.title}_${blog.preview}`}>{blog.preview}</div>
			</div>
		);
	}
}

