# NOTE: This file is auto generated by OpenAPI Generator 6.4.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule ExWorldCheck.Model.ReviewResultsAuditDetails do
  @moduledoc """
  Audit details for REVIEW_RESULT action raised when a case result has been reviewed. Extends [AbstractAuditDetails](#AbstractAuditDetails).
  """

  @derive [Poison.Encoder]
  defstruct [
    :detailsType,
    :resultIds,
    :remark
  ]

  @type t :: %__MODULE__{
          :detailsType => String.t(),
          :resultIds => [String.t()],
          :remark => String.t()
        }
end

defimpl Poison.Decoder, for: ExWorldCheck.Model.ReviewResultsAuditDetails do
  def decode(value, _options) do
    value
  end
end
