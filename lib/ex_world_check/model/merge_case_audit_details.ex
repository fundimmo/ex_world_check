# NOTE: This file is auto generated by OpenAPI Generator 7.13.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule ExWorldCheck.Model.MergeCaseAuditDetails do
  @moduledoc """
  Audit details which contains information about a merge event. Extends [AbstractAuditDetails](#AbstractAuditDetails).
  """

  @derive JSON.Encoder
  defstruct [
    :detailsType,
    :childCaseId,
    :childCaseExternalId,
    :childCaseName,
    :childCaseCreatedDate
  ]

  @type t :: %__MODULE__{
          :detailsType => String.t(),
          :childCaseId => String.t(),
          :childCaseExternalId => String.t(),
          :childCaseName => String.t(),
          :childCaseCreatedDate => DateTime.t()
        }

  def decode(value) do
    value
  end
end
