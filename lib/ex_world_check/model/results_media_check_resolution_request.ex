# NOTE: This file is auto generated by OpenAPI Generator 6.4.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule ExWorldCheck.Model.ResultsMediaCheckResolutionRequest do
  @moduledoc """
  Articles to attach. User able to attach articles only to unarchive case. 
  """

  @derive [Poison.Encoder]
  defstruct [
    :reason,
    :risk,
    :articleIds
  ]

  @type t :: %__MODULE__{
          :reason => String.t() | nil,
          :risk => String.t(),
          :articleIds => [String.t()]
        }
end

defimpl Poison.Decoder, for: ExWorldCheck.Model.ResultsMediaCheckResolutionRequest do
  def decode(value, _options) do
    value
  end
end