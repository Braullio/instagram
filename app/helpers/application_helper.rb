# frozen_string_literal: true

# Helper of application
module ApplicationHelper
  def embedded_svg(path)
    File.open("app/assets/images/#{path}", 'rb') { |file| raw(file.read) }
  end

  def user_avatar(user)
    avatar = if user.avatar.attached?
               user.avatar
                   .variant(combine_options: { resize: '100x100^',
                                               extent: '100x100' })
             else
               'default-avatar.jpg'
             end

    image_tag avatar, class: 'photo'
  end
end
