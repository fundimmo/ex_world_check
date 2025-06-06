# NOTE: This file is auto generated by OpenAPI Generator 7.13.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule ExWorldCheck.Model.ProviderSourceType do
  @moduledoc """

  """

  @derive JSON.Encoder
  defstruct [
    :category,
    :identifier,
    :name
  ]

  @type t :: %__MODULE__{
          :category => ExWorldCheck.Model.ProviderSourceTypeCategoryDetail.t() | nil,
          :identifier => String.t() | nil,
          :name => String.t() | nil
        }

  alias ExWorldCheck.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :category,
      :struct,
      ExWorldCheck.Model.ProviderSourceTypeCategoryDetail
    )
  end
end
