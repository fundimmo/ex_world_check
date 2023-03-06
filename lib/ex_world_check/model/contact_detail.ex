# NOTE: This file is auto generated by OpenAPI Generator 6.4.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule ExWorldCheck.Model.ContactDetail do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :contactDetailType,
    :country,
    :detail
  ]

  @type t :: %__MODULE__{
          :contactDetailType => String.t(),
          :country => ExWorldCheck.Model.Country.t() | nil,
          :detail => String.t() | nil
        }
end

defimpl Poison.Decoder, for: ExWorldCheck.Model.ContactDetail do
  import ExWorldCheck.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:country, :struct, ExWorldCheck.Model.Country, options)
  end
end
