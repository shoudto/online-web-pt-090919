class AddDefaultImageToRecipes < ActiveRecord::Migration
  def change
    change_column_default :recipes, :image, 'https://image.shutterstock.com/display_pic_with_logo/136306/722718082/stock-photo-healthy-food-clean-eating-selection-fruit-vegetable-seeds-superfood-cereals-leaf-vegetable-on-722718082.jpg'
  end
end
