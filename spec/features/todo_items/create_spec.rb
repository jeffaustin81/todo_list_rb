require 'spec_helper'

describe "Adding todo items" do
  let!(:todo_list) {TodoList.create(title: "Groceries", description: "Grocery list.")}

  def visit_todo_list(list)
    visit "/todo_lists"
    within "#todo_list_#{list.id}" do
      click_link "List Items"
    end
  end
