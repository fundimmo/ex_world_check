# NOTE: This file is auto generated by OpenAPI Generator 6.4.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule ExWorldCheck.Model.Article do
  @moduledoc """
  Contains attributes that are derived from the result obtained from media check.
  """

  @derive [Poison.Encoder]
  defstruct [
    :articleId,
    :title,
    :publicationDate,
    :sourceName
  ]

  @type t :: %__MODULE__{
          :articleId => String.t(),
          :title => String.t(),
          :publicationDate => DateTime.t(),
          :sourceName => String.t()
        }
end

defimpl Poison.Decoder, for: ExWorldCheck.Model.Article do
  def decode(value, _options) do
    value
  end
end
