# NOTE: This file is auto generated by OpenAPI Generator 6.4.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule ExWorldCheck.Model.ProviderSourceTypeCategoryDetail do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :description,
    :identifier,
    :name
  ]

  @type t :: %__MODULE__{
          :description => String.t() | nil,
          :identifier => String.t() | nil,
          :name => String.t() | nil
        }
end

defimpl Poison.Decoder, for: ExWorldCheck.Model.ProviderSourceTypeCategoryDetail do
  def decode(value, _options) do
    value
  end
end
