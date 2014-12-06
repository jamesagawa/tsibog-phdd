module MyRestaurantsCellStylesheet
  def cell_size
    {w: 320, h: 70}
  end

  def my_restaurants_cell(st)
    st.frame = cell_size
    #st.background_color = color.random
    st.background_color = color.white
    st.border_width = 1
    st.border_color = '#dddddd'.to_color

    # Style overall view here
  end

  def foo(st)
    st.frame = {top: 15, left: 15, width: 270, height: 20}
    st.view.numberOfLines = 1
    st.font = font.system(16)
  end

  def more_info(st)
    st.frame = {top: 35, left: 15, width: 270, height: 15}
    st.view.numberOfLines = 1
    st.font = font.system(11)
    st.color = '#888888'.to_color
  end


end
