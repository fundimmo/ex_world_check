# NOTE: This file is auto generated by OpenAPI Generator 6.4.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule ExWorldCheck.Model.PaginationResponseAllOf do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :totalItems
  ]

  @type t :: %__MODULE__{
          :totalItems => integer() | nil
        }
end

defimpl Poison.Decoder, for: ExWorldCheck.Model.PaginationResponseAllOf do
  def decode(value, _options) do
    value
  end
end
