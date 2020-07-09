<ul class="list-unstyled">
  <% microposts.each do |micropost| %>
    <li class="media mb-3">
      <img class="mr-2 rounded" src="<%= gravatar_url(micropost.user, { size: 50 }) %>" alt="">
      <div class="media-body">
        <div>
          <%= link_to micropost.user.name, user_path(micropost.user) %> <span class="text-muted">posted at <%= micropost.created_at %></span>
        </div>
        <div>
          <p class="mb-0"><%= micropost.content %></p>
        </div>
        <div>
          <% if current_user == micropost.user %>
            <%= link_to "Delete", micropost, method: :delete, data: { confirm: "You sure?" }, class: 'btn btn-danger btn-sm' %>
          <% end %>
        </div>
      </div>
    </li>
    <% end %>
    <%= paginate microposts %>
</ul>