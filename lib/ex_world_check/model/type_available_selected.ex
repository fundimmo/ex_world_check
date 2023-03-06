# NOTE: This file is auto generated by OpenAPI Generator 6.4.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule ExWorldCheck.Model.TypeAvailableSelected do
  @moduledoc """
  Represents a type and also tells whether it is available and whether it should be selected by default
  """

  @derive [Poison.Encoder]
  defstruct [
    :selected,
    :type,
    :available
  ]

  @type t :: %__MODULE__{
          :selected => boolean() | nil,
          :type => String.t() | nil,
          :available => boolean() | nil
        }
end

defimpl Poison.Decoder, for: ExWorldCheck.Model.TypeAvailableSelected do
  def decode(value, _options) do
    value
  end
end
