defmodule PhoenixTest.CommentTest do
  use PhoenixTest.ModelCase

  alias PhoenixTest.Comment

  @valid_attrs %{content: "some content", email: "some content", name: "some content", title: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Comment.changeset(%Comment{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Comment.changeset(%Comment{}, @invalid_attrs)
    refute changeset.valid?
  end
end
