json.array! @posts, partial: "posts/post", as: :post

<td>
	<%= post.comments.count %> <%= (post.comments.count) == 1 ? 'Comment' : 'Commentes'%>
</td>
