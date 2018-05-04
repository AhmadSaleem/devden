ActiveAdmin.register PortfolioItem do
  permit_params :title, :description, images: []

  form do |f|
    f.inputs do
      f.input :title
      f.input :description
    end

    f.inputs "Add images" do
      f.file_field :images, multiple: true
    end
    render 'admin/portfolio_items/images', portfolio_item: f.object
    f.actions
  end


  show do
    default_main_content

    panel "Images" do
      render 'admin/portfolio_items/images', portfolio_item: portfolio_item
    end
  end


  collection_action :remove_image do
    resource = PortfolioItem.find_by(id: params[:listing_id])
    return redirect_to admin_root_path, notice: "Ambigious input" unless resource.present?
    image = resource.images.find_by(id: params[:id])
    if image.present?
      image.delete
      redirect_to edit_admin_portfolio_item_path(resource), notice: "Image Removed successfully."
    else
      redirect_to edit_admin_portfolio_item_path(resource), notice: "Image not found."
    end
  end
end
