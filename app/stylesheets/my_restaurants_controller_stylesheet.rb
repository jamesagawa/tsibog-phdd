class MyRestaurantsControllerStylesheet < ApplicationStylesheet

  include MyRestaurantsCellStylesheet

  def setup
    # Add stylesheet specific setup stuff here.
    # Add application specific setup stuff in application_stylesheet.rb

    @margin = ipad? ? 12 : 0
  end

  def collection_view(st)
    #st.view.contentInset = [@margin, @margin, @margin, @margin]
    st.view.contentInset = [0,0,0,0]
    st.background_color = color.white

    st.view.collectionViewLayout.tap do |cl|
      cl.itemSize = [cell_size[:w], cell_size[:h]]
      #cl.scrollDirection = UICollectionViewScrollDirectionHorizontal
      #cl.headerReferenceSize = [cell_size[:w], cell_size[:h]]
      cl.minimumInteritemSpacing = @margin
      cl.minimumLineSpacing = @margin
      #cl.sectionInset = [0,0,0,0]
      #cl.minimumInteritemSpacing = 0
      #cl.minimumLineSpacing = 0
    end
  end
end
