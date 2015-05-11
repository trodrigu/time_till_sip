include Math

Shoes.app do
  background white
  stack(margin: 40) do
    para "Enter desired ending temperature in Farenheight"
    flow do
      @ending_temp_f = edit_line
      @b1 = button "Calculate time till sip"
      @b1.click do
        @ending_temp_c = (@ending_temp_f.text.to_f - 32.0) * 5.0/9.0
        @time = -10 * log((@ending_temp_c - 20.0)/90.0)
        stack(margin: 30) { para "%.2f" % @time, " Minutes" }
      end
    end
  end
end