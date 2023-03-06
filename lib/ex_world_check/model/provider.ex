# NOTE: This file is auto generated by OpenAPI Generator 6.4.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule ExWorldCheck.Model.Provider do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :code,
    :identifier,
    :master,
    :name
  ]

  @type t :: %__MODULE__{
          :code => String.t() | nil,
          :identifier => String.t() | nil,
          :master => boolean() | nil,
          :name => String.t() | nil
        }
end

defimpl Poison.Decoder, for: ExWorldCheck.Model.Provider do
  def decode(value, _options) do
    value
  end
end
