require 'rails_helper'

describe Todo, '#completed?' do
  it 'returns true if completed_at is set' do
    todo = Todo.new completed_at: Time.now
    expect(todo.completed?).to be_truthy
  end
  it 'return false if completed_at is nil' do
    todo = Todo.new
    expect(todo.completed?).to be_falsy
  end
end
