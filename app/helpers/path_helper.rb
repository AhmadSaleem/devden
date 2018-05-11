module PathHelper
  def render_path path_id
    return "##{path_id}" if controller_name == "pages"
    "#{root_path}##{path_id}"
  end
end
