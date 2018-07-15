<div class = 'container'>
 			<div class="row" data-post-id="<%= post.id %>">
            
            <div class="col-sm-12 col-md-8"><%= link_to post.title, post_path(id: post.id) %><hr></div>
            <div class="col-sm-12 col-md-2"><%= link_to 'Edit', edit_post_path(id: post.id),  method: :delete, remote: true, role: 'button', class: 'btn btn-primary' %></div>
            <div class="col-sm-12 col-md-2"><%= link_to 'Destroy', post_path(id: post.id), method: :delete, remote: true, data: { confirm: 'Are you sure?'}, role: 'button', class: 'btn btn-danger' %></div>
        </div>
 </div>