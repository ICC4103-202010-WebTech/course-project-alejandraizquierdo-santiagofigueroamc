module ApplicationHelper
  include Pagy::Frontend

  def errors_for(object)
    if object.errors.any?
      content_tag(:div, class: 'card text-white bg-danger mb-3') do
        concat(content_tag(:div, class: 'card-header') do
          concat(content_tag(:h4) do
            concat "#{pluralize(object.errors.count, 'error')} prohibited this #{object.class.name.downcase} from being saved:"
          end)
        end)
        concat(content_tag(:div, class: 'card-body') do
          concat(content_tag(:ul) do
            object.errors.full_messages.each do |msg|
              concat content_tag(:li, msg)
            end
          end)
        end)
      end
    end
  end

  def current_person
    if current_user
      current_user
    elsif current_admin
      current_admin
    else
      User.new
    end
  end

  def invitations_count
    if cookies.has_key?("#{current_person.email}_invitations")
      invitations_count = JSON.parse(cookies["#{current_person.email}_invitations"])
      num_items = 0
      invitations_count.each_key do |k|
        num_items += invitations_count[k]
      end
      return num_items
    end
    return 0
  end

end
