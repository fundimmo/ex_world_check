# NOTE: This file is auto generated by OpenAPI Generator 6.4.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule ExWorldCheck.Model.RelationshipType do
  @moduledoc """
  Relationship type between cases.
  """

  @derive [Poison.Encoder]
  defstruct []

  @type t :: %__MODULE__{}
end

defimpl Poison.Decoder, for: ExWorldCheck.Model.RelationshipType do
  def decode(value, _options) do
    value
  end
end