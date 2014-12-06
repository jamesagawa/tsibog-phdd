class MainStylesheet < ApplicationStylesheet

  def setup
    # Add sytlesheet specific setup stuff here.
    # Add application specific setup stuff in application_stylesheet.rb
  end

  def root_view(st)
    st.background_color = color.white
  end

  def loading_label(st)
    st.frame = {top: 210, width: 200, height: 30, centered: :horizontal}
    st.text_alignment = :center
    st.color = color.battleship_gray
    st.font = font.small
    st.text = 'Loading...'
    st.alpha = 0
  end

  def where_to_button(st)
    st.frame = {top: 150, width: 300, height: 50, centered: :horizontal}
    st.color = color.white
    st.background_color = color.red
    st.font = font.medium
    st.text = 'Where to Eat?'
  end

end
