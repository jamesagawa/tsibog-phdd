class PointsStylesheet < ApplicationStylesheet

  def setup
    # Add sytlesheet specific setup stuff here.
    # Add application specific setup stuff in application_stylesheet.rb
  end

  def root_view(st)
    st.background_color = color.white
  end

  def top_label(st)
    st.frame = {top: 150, width: 300, height: 50, centered: :horizontal}
    st.text_alignment = :center
    st.color = '#999999'.to_color
    st.font = font.medium
    st.text = 'Your total points is'
  end

  def point_label(st)
    st.frame = {top: 200, width: 300, height: 150, centered: :horizontal}
    st.text_alignment = :center
    st.color = '#cc0000'.to_color
    st.font = font.system(75)
    st.text = '1000'
  end

end
