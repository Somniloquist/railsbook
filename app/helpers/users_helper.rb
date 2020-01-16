module UsersHelper
  def gravatar_for(user, size=80)
    gravatar_id = Digest::MD5.hexdigest(user.email.downcase)
    gravatar_url = "https://www.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: "#{user.firstname} #{user.lastname}", class: "gravatar")
  end

  # Set custom avatar if user has uploaded one else use gravatar
  def avatar_for(user, size=80)
    user.avatar.attached? ? image_tag(url_for(user.set_avatar(size))) : gravatar_for(user, size)
  end
end
