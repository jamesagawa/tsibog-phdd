class ResultStylesheet < ApplicationStylesheet

  def setup
    # Add sytlesheet specific setup stuff here.
    # Add application specific setup stuff in application_stylesheet.rb
  end

  def root_view(st)
    st.background_color = color.white
  end

  def name_label(st)
    st.frame = {top: 70, width: 300, height: 50, centered: :horizontal}
    st.text_alignment = :center
    st.color = '#333333'.to_color
    st.font = font.small
    st.view.numberOfLines = 2
  end

  def address_label(st)
    st.frame = {top: 100, width: 300, height: 50, centered: :horizontal}
    st.text_alignment = :center
    st.color = '#999999'.to_color
    st.font = font.system(11)
    st.view.numberOfLines = 2
  end

  def joke_label(st)
    st.frame = {top: 110, width: 300, height: 100, centered: :horizontal}
    st.text_alignment = :center
    st.color = '#555555'.to_color
    st.font = font.system(12)
    st.view.numberOfLines = 3
  end


end
