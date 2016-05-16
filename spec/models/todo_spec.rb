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

describe Todo, '#complete!' do
  it 'updates completed_at for todo' do
    todo = Todo.create! completed_at: nil
    todo.complete!
    todo.reload
    expect(todo.completed?).to be_truthy
  end
end

describe Todo, '#incomplete!' do
  it 'resets completed_at for todo to nil' do
    todo = Todo.create! completed_at: Time.now
    todo.incomplete!
    todo.reload
    expect(todo.completed?).to be_falsy
  end
end
