# NOTE: This file is auto generated by OpenAPI Generator 6.4.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule ExWorldCheck.Model.ResultsResolutionAction do
  @moduledoc """
  Represents the request details required for resolving Results. Resolution ids (i.e. statusId, riskId) as well as the resultIds of the results to be resolved are required to perform a resolution operation. 
  """

  @derive [Poison.Encoder]
  defstruct [
    :statusId,
    :riskId,
    :reasonId,
    :resolutionRemark,
    :resultIds
  ]

  @type t :: %__MODULE__{
          :statusId => String.t() | nil,
          :riskId => String.t() | nil,
          :reasonId => String.t() | nil,
          :resolutionRemark => String.t() | nil,
          :resultIds => [String.t()]
        }
end

defimpl Poison.Decoder, for: ExWorldCheck.Model.ResultsResolutionAction do
  def decode(value, _options) do
    value
  end
end
