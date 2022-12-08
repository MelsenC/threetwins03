class DesignsController < ManageOrdersController
  def index
    @designs = Design.all
  end
end
