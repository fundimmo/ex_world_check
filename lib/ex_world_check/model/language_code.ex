# NOTE: This file is auto generated by OpenAPI Generator 6.4.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule ExWorldCheck.Model.LanguageCode do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :code,
    :name
  ]

  @type t :: %__MODULE__{
          :code => String.t() | nil,
          :name => String.t() | nil
        }
end

defimpl Poison.Decoder, for: ExWorldCheck.Model.LanguageCode do
  def decode(value, _options) do
    value
  end
end
