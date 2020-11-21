module ApplicationHelper
  def user_image_link(user, image_size)
    html = ""
    if user.image.attached?
      html = link_to image_tag(user.image.variant(resize_to_fill: [image_size, image_size])), user_path(user)
    end
    return raw(html)
  end
end