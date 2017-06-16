class GameEvent < ApplicationRecord

  def fn_1
    fn(option_1_fn_body, option_1_fn_return_message, option_1_fn_end)
  end

  def fn_2
    fn(option_2_fn_body, option_2_fn_return_message, option_2_fn_end)
  end

  def options
    [
      {
        message: self.option_1_message,
        fn: self.fn_1
      },
      {
        message: self.option_2_message,
        fn: self.fn_2
      }
    ]
  end

  private

  def fn(body, return_message, return_end)
    "(function(dog) { #{body} return { message: '#{return_message}', end: #{return_end} } })"
  end
end
